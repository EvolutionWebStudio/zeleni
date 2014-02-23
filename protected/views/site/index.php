<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<?php foreach($slides as $slide): ?>
<?php echo $slide->title; ?>
<?php echo $slide->link; ?>
<?php echo $slide->image; ?>
<?php echo $slide->content; ?>
<?php echo $slide->lang; ?>
<?php echo $slide->number; ?>
<?php echo $slide->color; ?>
<?php endforeach; ?>

