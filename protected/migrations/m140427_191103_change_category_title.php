<?php

class m140427_191103_change_category_title extends CDbMigration
{
	public function up()
	{
		$this->alterColumn('category', 'title', 'varchar(255)');
	}

	public function down()
	{
		$this->alterColumn('category', 'title', 'varchar(45)');
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