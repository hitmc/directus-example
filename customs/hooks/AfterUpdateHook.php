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
        switch ($table) {
            case 'car_translation':
                $this->initClient();
                return $this->handleCarTranslation($data);
                break;
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
        $recordCurrent = $this->client->getItem('car_translation', $id);
        if (empty($recordCurrent) || empty($recordCurrent['car_id'])) return;

        $records = $this->client->getItems('car_translation', [
            'filters' => [
                'car_id' => $recordCurrent['car_id'],
            ]
        ]);

        if (!empty($records)) {
            foreach ($records as $record) {
                $info = $record->getData();
                if (!empty($info['language_code']) && !empty($info['approved']) && $info['approved'] === 1) {
                    if ($info['language_code'] == 'ru') {
                        $this->transferDataForRuAndTest($record, 'ru-test');
                    } elseif ($info['language_code'] == 'ru-test') {
                        $this->transferDataForRuAndTest($record, 'ru');
                    }
                }
            }
        }
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

        // возвращаем флаг одобрения в выключенное состояние
        $this->client->updateItem('car_translation', $record['id'], ['approved' => 0]);
//        echo"<pre>";var_dump($res);die;

    }
}
