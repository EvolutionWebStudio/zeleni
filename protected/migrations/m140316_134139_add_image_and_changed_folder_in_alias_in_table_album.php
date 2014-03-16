<?php

class m140316_134139_add_image_and_changed_folder_in_alias_in_table_album extends CDbMigration
{
	public function up()
	{
		$this->addColumn('album', 'image', 'varchar(255) AFTER number');
		$this->addColumn('album', 'lang', 'varchar(10) AFTER number');
		$this->renameColumn('album', 'folder', 'alias');
	}

	public function down()
	{
		$this->dropColumn('album', 'image');
		$this->dropColumn('album', 'lang');
		$this->renameColumn('album', 'alias', 'folder');
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