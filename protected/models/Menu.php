<?php

/**
 * This is the model class for table "menu".
 *
 * The followings are the available columns in table 'menu':
 * @property integer $id
 * @property string $type
 * @property string $item
 * @property integer $category_id
 * @property string $lang
 * @property integer $parent_item
 * @property integer $order
 *
 * The followings are the available model relations:
 * @property Category $category
 * @property Menu $parentItem
 * @property Menu[] $menus
 */
class Menu extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'menu';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('category_id, parent_item, order', 'numerical', 'integerOnly'=>true),
			array('type, item', 'length', 'max'=>45),
			array('lang', 'length', 'max'=>10),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, type, item, category_id, lang, parent_item, order', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'category' => array(self::BELONGS_TO, 'Category', 'category_id'),
			'parentItem' => array(self::BELONGS_TO, 'Menu', 'parent_item'),
			'menus' => array(self::HAS_MANY, 'Menu', 'parent_item'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'type' => 'Type',
			'item' => 'Item',
			'category_id' => 'Category',
			'lang' => 'Lang',
			'parent_item' => 'Parent Item',
			'order' => 'order',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('type',$this->type,true);
		$criteria->compare('item',$this->item,true);
		$criteria->compare('category_id',$this->category_id);
		$criteria->compare('lang',$this->lang,true);
		$criteria->compare('parent_item',$this->parent_item);
		$criteria->compare('order',$this->order);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Menu the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public static function getLang() {
		if(!isset(Yii::app()->session['_lang']))
			Yii::app()->session['_lang'] = 'sr';
		return Yii::app()->session['_lang'];
	}

	public static function getTopMenu() {
		$criteria=new CDbCriteria;
		$criteria->condition = "type = 'Top' AND lang = '" . Menu::getLang() . "'";
		$criteria->order = "'order'";
		$menu = Menu::model()->findAll($criteria);
		foreach ($menu as $row) {
				$categories[] = array('label' => $row['item'], 'url' => array('/'.$row['category']->alias), 'active'=>(Yii::app()->request->url=='/'.$row['category']->alias)?true:false);
		}
		$menu = array('items'=>$categories, 'htmlOptions'=>array('class'=>'small-5 columns text-left'), 'activateItems' => true);
		return $menu;
	}

	public static function getMainMenu() {
		$criteria=new CDbCriteria;
		$criteria->condition = "type = 'Main' AND lang = '" . Menu::getLang() . "' AND parent_item IS NULL";
		$criteria->order = "'order'";
		$menu = Menu::model()->findAll($criteria);
		foreach ($menu as $row) {
			$subCategories = Menu::getSubMenu($row->id,$row['category']->alias);

			if($subCategories) {
				if($row['category']->alias == 'proizvodi'){
					$categories[] = array('label' => $row['item'], 'itemOptions' => array('class' => 'small-3 columns'), 'activeItems' => true, 'url' => '/','active'=>(Yii::app()->request->url=='/')?true:false, 'items' => $subCategories);
				}else {
					$categories[] = array('label' => $row['item'], 'itemOptions' => array('class' => 'small-3 columns'), 'activeItems' => true, 'url' => array('/'.$row['category']->alias),'active'=>(Yii::app()->request->url=='/'.$row['category']->alias)?true:false, 'items' => $subCategories);
				}
			}
			else
				$categories[] = array('label' => $row['item'], 'itemOptions' => array('class' => 'small-3 columns'), 'url' => array(Yii::app()->request->baseUrl.'/'.$row['category']->alias), 'active'=>(Yii::app()->request->url=='/'.$row['category']->alias)?true:false);
		}
		$menu = array('items'=>$categories, 'htmlOptions'=>array('class'=>''),'activeCssClass'=>'active', 'activateItems' => true);
		return $menu;
	}
	public static function getSubMenu($id,$link){
		$criteria=new CDbCriteria;
		$criteria->condition = "parent_item = $id AND lang = '" . Menu::getLang() . "'";
		$criteria->order = "'order'";
		$subMenu = Menu::model()->findAll($criteria);
		if($subMenu){
			foreach ($subMenu as $row){
				$alias = ($row['category']->parent_id)? Category::model()->findByPk($row['category']->parent_id)->alias : $link;
				if($row['category']->type == Category::TYPE_SELF_LINK) {
					$data[] = array('label' => $row['item'], 'url' => array('/' . $alias.'#'.$row['category']->alias));
				}
				else {
					if($alias == 'sveze-voce')
						$data[] = array('label' => $row['item'], 'url' => array('/'.$row['category']->alias));
					else
						$data[] = array('label' => $row['item'], 'url' => array($alias.'/'.$row['category']->alias));
				}
			}}
		else
			$data = array();
		return $data;
	}

	public static function getSidebarMenu(){
		$criteria=new CDbCriteria;
		$criteria->condition = "type = 'Sidebar' AND lang = '" . Menu::getLang() . "' AND parent_item IS NULL";
		$criteria->order = "'order'";
		$menu = Menu::model()->findAll($criteria);
		foreach ($menu as $row) {
			$subCategories = Menu::getSidebarSubMenu($row->id, $row['category']->alias);
			if($subCategories)
				$categories[] = array('label' => $row['item'], 'template'=>'{menu}<span class="link-arrow">&gt;</span>', 'itemOptions' => array('class' => ''), 'activeItems' => true, 'url' => array('/'.$row['category']->alias), 'items' => $subCategories);
			else
				$categories[] = array('label' => $row['item'], 'template'=>'{menu}<span class="link-arrow">&gt;</span>', 'itemOptions' => array('class' => ''), 'url' => array('/'.$row['category']->alias));
		}
		$menu = array(
			'items'=>$categories,
			'encodeLabel'=>false,
			'htmlOptions'=>array('class'=>''),
			'activeCssClass'=>'selected',
			'activateItems' => true,
		);
		return $menu;
	}

	public static function getSidebarSubMenu($id,$alias){
		$criteria=new CDbCriteria;
		$criteria->condition = "parent_item = $id AND lang = '" . Menu::getLang() . "'";
		$criteria->order = "'order'";
		$subMenu = Menu::model()->findAll($criteria);
		if($subMenu)
			foreach ($subMenu as $row){
					if($row['category']->type == Category::TYPE_SELF_LINK)
						$data[] = array('label' => $row['item'], 'template'=>'{menu}<span class="link-arrow">&gt;</span>', 'url' => array('/' . $alias . '#' . $row['category']->alias));
					else {
						if($alias == 'proizvodi'){
							$data[] = array('label' => $row['item'], 'template'=>'{menu}<span class="link-arrow">&gt;</span>', 'url' => array('/'.$row['category']->alias));
						}else {
							$data[] = array('label' => $row['item'], 'template'=>'{menu}<span class="link-arrow">&gt;</span>', 'url' => array($alias.'/'.$row['category']->alias));
						}
					}
			}
		else
			$data = array();
		return $data;
	}
}
