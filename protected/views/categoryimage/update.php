<?php
/* @var $this CategoryimageController */
/* @var $model Categoryimage */

$this->breadcrumbs=array(
	'Categoryimages'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Categoryimage', 'url'=>array('index')),
	array('label'=>'Create Categoryimage', 'url'=>array('create')),
	array('label'=>'View Categoryimage', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Categoryimage', 'url'=>array('admin')),
);
?>

<h1>Update Categoryimage <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>