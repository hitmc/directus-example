<?php

namespace Directus\Customs\Hooks;

/**
 * Class AfterUpdateHook
 * @package Directus\Customs\Hooks
 */
class AfterUpdateHook
{
    /**
     * @var \Directus\SDK\ClientLocal
     */
    private $client;

    /**
     * Инициализация клиента
     */
    private function initClient()
    {
        $config = \Directus\Bootstrap::get('config');
        $this->client = \Directus\SDK\ClientFactory::create([
            'database' => [
                'database' => DB_NAME,
                'username' => DB_USER,
                'password' => DB_PASSWORD,
            ]
        ] + $config->toArray());
    }

    function __invoke($table, $data)
    {
        $this->initClient();
        $tables_with_translate = $this->getTablesWithTranslate();

        if(empty($tables_with_translate)){
            return false;
        }

        if(array_key_exists($table, $tables_with_translate)){
            return $this->handleTranslation($table, $data, $tables_with_translate[$table]);
        }
    }

    /**
     * Получить таблицы с переводом
     * @return array
     */
    private function getTablesWithTranslate(){
        $tables = $this->client->getTables();
        $list = [];

        if(empty($tables)){
            return $list;
        }

        /**
         * @var $tables \Directus\SDK\Response\Entry[]
         */
        $tables = $tables->getData();

        foreach($tables as $table){
            $is_translation_table = strpos($table->offsetGet('table_name'), '_translation') !== false;

            if($is_translation_table){
                $list[str_replace('_translation', '', $table->offsetGet('table_name'))] = $table->offsetGet('table_name');
            }
        }

        return $list;
    }

    /**
     * Обработчик для таблицы с переводом
     * @param string $table
     * @param array $data
     * @param string $translation
     */
    private function handleTranslation($table, $data, $translation){
        if (empty($data['id'])) return;
        $id = $data['id'];

        $recordCurrent = $this->client->getItem($table, $id);
        if (empty($recordCurrent)) return;

        $records = $this->client->getItems($translation, [
            'filters' => [
                'entry_id' => $id,
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
        $this->client->updateItem($table, $recordCurrent['id'], [
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
