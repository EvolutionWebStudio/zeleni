<?php
/* @var $this CategoryimageController */
/* @var $model Categoryimage */

$this->breadcrumbs=array(
	'Categoryimages'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Categoryimage', 'url'=>array('index')),
	array('label'=>'Manage Categoryimage', 'url'=>array('admin')),
);
?>

<h1>Create Categoryimage</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>