<?php
/* @var $this CategoryimageController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Categoryimages',
);

$this->menu=array(
	array('label'=>'Create Categoryimage', 'url'=>array('create')),
	array('label'=>'Manage Categoryimage', 'url'=>array('admin')),
);
?>

<h1>Categoryimages</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
