<?php
/* @var $this CategoryimageController */
/* @var $model Categoryimage */

$this->breadcrumbs=array(
	'Categoryimages'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List Categoryimage', 'url'=>array('index')),
	array('label'=>'Create Categoryimage', 'url'=>array('create')),
	array('label'=>'Update Categoryimage', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Categoryimage', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Categoryimage', 'url'=>array('admin')),
	array('label'=>'Update Next', 'url'=>array('update', 'id'=>$model->id+1)),
);
?>

<h1>View Categoryimage #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'category_id',
	),
)); ?>
