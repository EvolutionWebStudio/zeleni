<?php
/* @var $this SiteController */
/* @var $model ContactForm */
/* @var $form CActiveForm */

$this->pageTitle='';
?>
	<div class="category-header">
		<div class="bar green">
			<div class="row collapse wide main-banner">
				<div class="clearfix banner-line top"></div>
				<div class="logo-image"></div>

				<div class="caption-wrapper columns">
					<article>
						<hgroup>
							<h1><?php echo $category->content; ?></h1>
						</hgroup>
					</article>
				</div>

				<div class="image-wrapper wider-image columns">
					<img src="<?php echo Yii::app()->request->baseUrl . '/img/articles/' . $category->images[0]->name; ?>" alt="Clanak placeholder" class="clanak-placeholder"/>
				</div>
				<div class="clearfix banner-line bottom"></div>
			</div>
		</div>
	</div>

	<div class="main-wrapper row collapse wide">
		<aside class="main-sidebar columns">
			<nav>
				<?php $this->widget('zii.widgets.CMenu', Menu::getSidebarMenu()); ?>
			</nav>
		</aside>

		<div class="main-content columns">
			<section>
				<h1 class="article-title"><?php echo $category->title; ?></h1>
				<div class="article-content">
					<?php if($post): ?>
						<article>
							<h2><?php echo $post->title; ?></h2>
							<?php echo $post->content; ?>
						</article>

						<?php if(Yii::app()->user->hasFlash('contact')): ?>

							<div class="flash-success">
								<?php echo Yii::app()->user->getFlash('contact'); ?>
							</div>

						<?php else: ?>


							<div class="form">

								<?php $form=$this->beginWidget('CActiveForm', array(
									'id'=>'contact-form',
									'enableClientValidation'=>true,
									'clientOptions'=>array(
										'validateOnSubmit'=>true,
									),
								)); ?>

								<p class="note">Fields with <span class="required">*</span> are required.</p>

								<?php echo $form->errorSummary($model); ?>

								<div class="row">
									<?php echo $form->labelEx($model,'name'); ?>
									<?php echo $form->textField($model,'name'); ?>
									<?php echo $form->error($model,'name'); ?>
								</div>

								<div class="row">
									<?php echo $form->labelEx($model,'company'); ?>
									<?php echo $form->textField($model,'company',array('size'=>60,'maxlength'=>128)); ?>
									<?php echo $form->error($model,'company'); ?>
								</div>

								<div class="row">
									<?php echo $form->labelEx($model,'email'); ?>
									<?php echo $form->textField($model,'email'); ?>
									<?php echo $form->error($model,'email'); ?>
								</div>

								<div class="row">
									<?php echo $form->labelEx($model,'webSite'); ?>
									<?php echo $form->textField($model,'webSite',array('size'=>60,'maxlength'=>128)); ?>
									<?php echo $form->error($model,'webSite'); ?>
								</div>

								<div class="row">
									<?php echo $form->labelEx($model,'phone'); ?>
									<?php echo $form->textField($model,'phone',array('size'=>60,'maxlength'=>128)); ?>
									<?php echo $form->error($model,'phone'); ?>
								</div>

								<div class="row">
									<?php echo $form->labelEx($model,'body'); ?>
									<?php echo $form->textArea($model,'body',array('rows'=>6, 'cols'=>50)); ?>
									<?php echo $form->error($model,'body'); ?>
								</div>

								<div class="row buttons">
									<?php echo CHtml::submitButton('Submit'); ?>
								</div>

								<?php $this->endWidget(); ?>

							</div><!-- form -->

						<?php endif; ?>
					<?php endif; ?>
				</div>
			</section>
		</div>
	</div>

