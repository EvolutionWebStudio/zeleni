<div class="category-header">
	<div class="bar green">
		<div class="clearfix main-banner">
			<div class="clearfix banner-line top"></div>
			<div class="logo-image"></div>
			<ul class="bxslider">
				<?php foreach($category->images as $image): ?>
					<li class="clearfix">

						<div class="caption-wrapper">
							<article>
								<hgroup>
									<h1><?php echo $category->content; ?></h1>
								</hgroup>
							</article>
						</div>
						<div class="image-wrapper wider-image">
							<img src="<?php echo Yii::app()->request->baseUrl . '/img/articles/' . $image->name; ?>" alt="Clanak placeholder" class="clanak-placeholder"/>
						</div>
					</li>
				<?php endforeach; ?>
			</ul>
			<div class="clearfix banner-line bottom"></div>
		</div>
	</div>
</div>

<div class="main-wrapper row collapse wide">

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


							<div class="form clearfix">

								<?php $form=$this->beginWidget('CActiveForm', array(
									'id'=>'contact-form',
									'enableClientValidation'=>true,
									'clientOptions'=>array(
										'validateOnSubmit'=>true,
									),
									'htmlOptions'=>array(
										'class'=>'large-12 columns',
									),
								)); ?>



								<?php echo $form->errorSummary($model); ?>


									<div class="large-3 columns text-right">
										<?php echo $form->labelEx($model,'name'); ?>
									</div>
									<div class="large-9 columns">
										<?php echo $form->textField($model,'name',array('class'=>'large-4 columns')); ?>
										<?php echo $form->error($model,'name'); ?>
									</div>

									<div class="large-3 columns text-right">
										<?php echo $form->labelEx($model,'company'); ?>
									</div>
									<div class="large-9 columns">
										<?php echo $form->textField($model,'company',array('size'=>60,'maxlength'=>128)); ?>
										<?php echo $form->error($model,'company'); ?>
									</div>

									<div class="large-3 columns text-right">
										<?php echo $form->labelEx($model,'email'); ?>
									</div>
									<div class="large-9 columns">
										<?php echo $form->textField($model,'email'); ?>
										<?php echo $form->error($model,'email'); ?>
									</div>

									<div class="large-3 columns text-right">
										<?php echo $form->labelEx($model,'webSite'); ?>
									</div>
									<div class="large-9 columns">
										<?php echo $form->textField($model,'webSite',array('size'=>60,'maxlength'=>128)); ?>
										<?php echo $form->error($model,'webSite'); ?>
									</div>

									<div class="large-3 columns text-right">
										<?php echo $form->labelEx($model,'phone'); ?>
									</div>
									<div class="large-9 columns">
										<?php echo $form->textField($model,'phone',array('size'=>60,'maxlength'=>128)); ?>
										<?php echo $form->error($model,'phone'); ?>
									</div>

									<div class="large-3 columns text-right">
										<?php echo $form->labelEx($model,'body'); ?>
									</div>
									<div class="large-9 columns">
										<?php echo $form->textArea($model,'body',array('rows'=>6, 'cols'=>50)); ?>
										<?php echo $form->error($model,'body'); ?>
									</div>


								<div class="buttons large-9 columns push-3">
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

