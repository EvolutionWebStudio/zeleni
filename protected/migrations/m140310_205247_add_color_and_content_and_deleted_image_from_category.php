<?php

class m140310_205247_add_color_and_content_and_deleted_image_from_category extends CDbMigration
{
	public function up()
	{
		$this->addColumn('category', 'color', 'varchar(10) AFTER type');
		$this->addColumn('category', 'content', 'text AFTER title');
		$this->dropColumn('category', 'image');
	}

	public function down()
	{
		$this->dropColumn('menu', 'color');
		$this->dropColumn('menu', 'content');
		$this->addColumn('category', 'image', 'varchar(255) AFTER type');
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