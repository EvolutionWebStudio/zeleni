<?php

class m140222_213254_add_tables_for_galery extends CDbMigration
{
	public function up()
	{
        $db = $this->getDbConnection();
        $query = file_get_contents(dirname(__FILE__) . DIRECTORY_SEPARATOR . 'galery.sql');
        $transaction = $db->beginTransaction();
        $db->createCommand($query)->execute();
        $transaction->commit();
	}

	public function down()
	{
		echo "m140222_213254_add_tables_for_galery does not support migration down.\n";
		return false;
	}

	/*
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
	}

	public function safeDown()
	{
	}
	*/
}