<?php

namespace Directus\Customs\Hooks;

/**
 * Class AfterUpdateHook
 * @package Directus\Customs\Hooks
 */
class AfterUpdateHook
{
    private $client;

    /**
     * Инициализация клиента
     */
    private function initClient()
    {
        $this->client = \Directus\SDK\ClientFactory::create([
            'database' => [
                'database' => DB_NAME,
                'username' => DB_USER,
                'password' => DB_PASSWORD,
            ]
        ]);
    }

    function __invoke($table, $data)
    {
//        var_dump($table, $data);die;
        $this->initClient();
        $res = $this->client->getItem($table, $data['id']);

        switch ($table) {
            case 'car':
                $this->initClient();
                return $this->handleCarTranslation($data);
        }
    }

    /**
     * Обработчик для таблицы car_translation
     * @param $data
     */
    private function handleCarTranslation($data)
    {
        if (empty($data['id'])) return;
        $id = $data['id'];
        $recordCurrent = $this->client->getItem('car', $id);
        if (empty($recordCurrent)) return;

        $records = $this->client->getItems('car_translation', [
            'filters' => [
                'car_id' => $id,
            ]
        ]);

        if (!empty($records)) {
            foreach ($records as $record) {
                $info = $record->getData();
                if ($recordCurrent['approved_main'] === 1 && $info['language_code'] == 'ru') {
                    $this->transferDataForRuAndTest($record, 'ru-test');
                } elseif ($recordCurrent['approved_test'] === 1 && $info['language_code'] == 'ru-test') {
                    $this->transferDataForRuAndTest($record, 'ru');
                }
            }
        }

        // возвращаем флаг одобрения в выключенное состояние
        $this->client->updateItem('car', $recordCurrent['id'], [
            'approved_main' => 0,
            'approved_test' => 0,
        ]);
    }

    /**
     * Перенести данные с одного языка на указанный
     * @param $record
     * @param $swapLanguage
     */
    private function transferDataForRuAndTest($record, $swapLanguage)
    {
        $car_id = $record['car_id'];
        $records = $this->client->getItems('car_translation', [
            'filters' => [
                'car_id' => $car_id,
                'language_code' => $swapLanguage
            ]
        ]);

        if (empty($records->getData()[0])) return;
        $recordSwap = $records->getData()[0];

        $prepareUpdateData = empty($record->toArray()['data']) ? $record->toArray() : $record->toArray()['data'];
        $unsetFields = ['id', 'sort', 'car_id', 'language_code', 'approved'];
        foreach ($unsetFields as $unsetField) {
            unset($prepareUpdateData[$unsetField]);
        }

        $res = $this->client->updateItem('car_translation', $recordSwap['id'], $prepareUpdateData);
    }
}
