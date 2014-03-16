<?php

class m140316_141411_change_title_in_table_image extends CDbMigration
{
	public function up()
	{
		$this->alterColumn('image', 'title', 'varchar(255)');
	}

	public function down()
	{
		$this->alterColumn('image', 'title', 'varchar(45)');
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