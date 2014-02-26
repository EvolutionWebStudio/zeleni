<?php

class m140226_214257_add_image_into_category extends CDbMigration
{
	public function up()
	{
		$this->addColumn('category', 'image', 'varchar(255) AFTER type');
	}

	public function down()
	{
		$this->dropColumn('category', 'image');
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