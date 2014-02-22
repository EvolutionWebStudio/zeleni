<?php
/* @var $this PromoController */
/* @var $model Promo */

$this->breadcrumbs=array(
	'Promos'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'List Promo', 'url'=>array('index')),
	array('label'=>'Create Promo', 'url'=>array('create')),
	array('label'=>'Update Promo', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Promo', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Promo', 'url'=>array('admin')),
);
?>

<h1>View Promo #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'title',
		'content',
		'link',
		'image1',
		'image2',
		'lang',
	),
)); ?>
