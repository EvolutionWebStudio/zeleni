<?php

class m140307_155859_add_order_in_menu extends CDbMigration
{
	public function up()
	{
		$this->addColumn('menu', 'order', 'integer(2) AFTER lang');
	}

	public function down()
	{
		$this->dropColumn('menu', 'order');
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