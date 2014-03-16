<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<div class="slider">
    <div class="bar green">
        <div class="clearfix main-banner">
            <div class="clearfix banner-line top"></div>
            <div class="logo-image"></div>
                <ul class="bxslider">
                    <?php foreach($slides as $slide): ?>
                        <li class="clearfix">
                            <div class="caption-wrapper">
                                <article>
                                    <?php echo $slide->content; ?>
                                </article>
                            </div>

                            <div class="image-wrapper wider-image">
                                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/slider/<?php echo $slide->image;?>" alt="Greeny tresnja"/>
                            </div>
                        </li>
                    <?php endforeach; ?>
                </ul>
            <div class="clearfix banner-line bottom"></div>
        </div>
    </div>

    <div class="bar gray">
        <div class="row wide">
            <nav class="slider-menu">
                <ul class="clearfix" id="bx-pager">
                    <?php  $i = 0;
                    foreach($slides as $slide): ?>
                        <li class="large-2 columns">
                            <a href="<?php echo Yii::app()->request->baseUrl . '/'.$slide->link; ?>" data-slide-index="<?php echo $i++; ?>"><span class="slide-number">0<?php echo $slide->number; ?></span> <?php echo $slide->title; ?> <span class="link-arrow">&gt;</span></a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </nav>
        </div>
    </div>

    <div class="row wide top-promo">
        <div class="large-3 columns relative">
            <div class="promo-logo">
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/greeny-logo-sareni-veliki.png" alt=""/>
            </div>
            &nbsp;
        </div>
        <div class="large-4 columns">
			<?php echo $posts[0]->content; ?>
        </div>
        <div class="large-3 columns">
	        <?php echo $posts[1]->content; ?>
        </div>
        <div class="large-2 columns text-center">
            <a class="button small" href="/galerija-slika">Galerija slika</a>
        </div>
    </div>
    
    <div class="bar gray">
        <div class="row wide">
            <ul class="link-blocks clearfix">
	            <?php foreach($banners as $banner): ?>
		            <li>
			            <a href="<?php echo $banner->link; ?>">
				            <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/<?php echo $banner->image; ?>" alt=""/>
                        <span><?php echo $banner->content; ?></span>
			            </a>
		            </li>
	            <?php endforeach; ?>
            </ul>
        </div>
    </div>

    <?php $this->renderPartial('_promo-banner', array('promo' => $promo)); ?>
</div>

