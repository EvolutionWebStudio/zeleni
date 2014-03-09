<?php

/**
 * This is the model class for table "category".
 *
 * The followings are the available columns in table 'category':
 * @property integer $id
 * @property string $title
 * @property string $alias
 * @property integer $order
 * @property string $lang
 * @property integer $parent_id
 * @property string $type
 * @property string $image
 *
 * The followings are the available model relations:
 * @property Category $parent
 * @property Category[] $categories
 * @property Post[] $posts
 */
class Category extends CActiveRecord
{

    const TYPE_SELF_LINK = 'SELF';
    const TYPE_EXTERNAL_LINK = 'EXTERNAL';
    const TYPE_PAGE = 'PAGE';
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'category';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('order, parent_id', 'numerical', 'integerOnly'=>true),
			array('title, alias', 'length', 'max'=>45),
			array('image', 'length', 'max'=>255),
			array('lang, type', 'length', 'max'=>10),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, title, alias, order, lang, parent_id, type, image', 'safe', 'on'=>'search'),
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
			'parent' => array(self::BELONGS_TO, 'Category', 'parent_id'),
			'categories' => array(self::HAS_MANY, 'Category', 'parent_id'),
			'posts' => array(self::HAS_MANY, 'Post', 'category_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'title' => 'Title',
			'alias' => 'Alias',
			'order' => 'Order',
			'lang' => 'Lang',
			'parent_id' => 'Parent',
			'type' => 'Type',
			'image' => 'Slika',
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
		$criteria->compare('title',$this->title,true);
		$criteria->compare('alias',$this->alias,true);
		$criteria->compare('order',$this->order);
		$criteria->compare('lang',$this->lang,true);
		$criteria->compare('parent_id',$this->parent_id);
		$criteria->compare('type',$this->type,true);
		$criteria->compare('image',$this->image,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Category the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

    public static function getMainManu(){
        $criteria=new CDbCriteria;
        $criteria->condition = "parent_id IS NULL AND type != 'PAGE'";
        $criteria->order = "'order'";
        $menu = Category::model()->findAll($criteria);
        foreach ($menu as $row) {
            $subCategories = Category::getMenuSubCategories($row->id,$row->alias);
            if($subCategories)
                $categories[] = array('label' => $row['title'], 'itemOptions' => array('class' => 'large-3 columns'), 'activeItems' => true, 'url' => array('/'.$row['alias']),'active'=>(Yii::app()->request->url=='/'.$row['alias'])?true:false, 'items' => $subCategories);
            else
            $categories[] = array('label' => $row['title'], 'itemOptions' => array('class' => 'large-3 columns'), 'url' => array('/'.$row['alias']), 'active'=>(Yii::app()->request->url=='/'.$row['alias'])?true:false);
        }
        $menu = array('items'=>$categories, 'htmlOptions'=>array('class'=>''),'activeCssClass'=>'active', 'activateItems' => true);
        return $menu;
    }

	public static function getSubManu(){
		$criteria=new CDbCriteria;
		$criteria->condition = "parent_id IS NULL AND type != 'PAGE'";
		$criteria->order = "'order'";
		$menu = Category::model()->findAll($criteria);
		foreach ($menu as $row) {
			$subCategories = Category::getSubMenuSubCategories($row->id,$row->alias);
			if($subCategories)
				$categories[] = array('label' => $row['title'], 'template'=>'{menu}<span class="link-arrow">&gt;</span>', 'itemOptions' => array('class' => ''), 'activeItems' => true, 'url' => array('/'.$row['alias']), 'items' => $subCategories);
			else
				$categories[] = array('label' => $row['title'], 'template'=>'{menu}<span class="link-arrow">&gt;</span>', 'itemOptions' => array('class' => ''), 'url' => array('/'.$row['alias']));
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

	public static function getSubMenuSubCategories($id,$alias){
		$menu = Category::model()->findAllByAttributes(array(
			'parent_id' => $id,
		));
		if($menu)
			foreach ($menu as $row){
				$subCategories = Category::getSubMenuSubCategories($row->id,$alias.'/'.$row->alias);
				if($subCategories) {
					if($row['type'] == Category::TYPE_SELF_LINK)
						$data[] = array('label' => $row['title'], 'template'=>'{menu}<span class="link-arrow">&gt;</span>', 'url' => array('/' . $alias . '#' . $row['alias']), 'items' => $subCategories);
					else
						$data[] = array('label' => $row['title'], 'template'=>'{menu}<span class="link-arrow">&gt;</span>', 'url' => array($alias.'/'.$row['alias']), 'items' => $subCategories);
				}
				else {
					if($row['type'] == Category::TYPE_SELF_LINK)
						$data[] = array('label' => $row['title'], 'template'=>'{menu}<span class="link-arrow">&gt;</span>', 'url' => array('/' . $alias . '#' . $row['alias']));
					else
						$data[] = array('label' => $row['title'], 'template'=>'{menu}<span class="link-arrow">&gt;</span>', 'url' => array($alias.'/'.$row['alias']));
				}

			}
		else
			$data = array();
		return $data;
	}

	public static function getTopManu(){
		$criteria=new CDbCriteria;
		$criteria->condition = "parent_id IS NULL AND type = 'PAGE'";
		$criteria->order = "'order'";
		$menu = Category::model()->findAll($criteria);
		foreach ($menu as $row) {
			$categories[] = array('label' => $row['title'], 'itemOptions' => array('class' => ''), 'url' => array('/'.$row['alias']));
		}
		$menu = array('items'=>$categories, 'htmlOptions'=>array('class'=>'large-6 columns text-left'),'activeCssClass'=>'selected', 'activateItems' => true);
		return $menu;
	}

    public static function getMenuSubCategories($id,$alias){
        $subCategories = Category::model()->findAllByAttributes(array(
            'parent_id' => $id,
        ));
        if($subCategories)
        foreach ($subCategories as $row){
	        if($row['type'] == Category::TYPE_SELF_LINK)
                $data[] = array('label' => $row['title'], 'url' => array('/' . $alias.'#'.$row['alias']));
	        else
                $data[] = array('label' => $row['title'], 'url' => array($alias.'/'.$row['alias']));
        }
        else
            $data = array();
        return $data;
    }
}
