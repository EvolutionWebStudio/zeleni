<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<div class="slider">
    <div class="bar green">
        <div class="row collapse wide main-banner">
            <div class="clearfix banner-line top"></div>
            <div class="logo-image"></div>

            <?php foreach($slides as $slide): ?>
                <div>
                    <div class="caption-wrapper columns">
                        <article>
                            <?php echo $slide->content; ?>
                        </article>
                    </div>

                    <div class="image-wrapper wider-image columns">
                        <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/slider/<?php echo $slide->image;?>" alt="Greeny tresnja"/>
                    </div>
                </div>
            <?php endforeach; ?>

            <div class="clearfix banner-line bottom"></div>
        </div>

    </div>

    <div class="bar gray">
        <div class="row wide">
            <nav class="slider-menu">
                <ul class="clearfix">
                    <?php foreach($slides as $slide): ?>
                        <li class="large-2 columns"><a href="<?php echo $slide->link; ?>"><span class="slide-number">0<?php echo $slide->number; ?></span> <?php echo $slide->title; ?> <span class="link-arrow">&gt;</span></a></li>
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
            <p>
                Naš voćnjak se nalazi u selu Kopljari nedaleko od Aranđelovca i oko 50 km jugozapadno od Beograda.
                Naša osnovna delatnost je gajenje i čuvanje jabuka.
            </p>
        </div>
        <div class="large-3 columns">
            <p>
                Trenutno gajimo ukupno 85.000 stabala jabuke sledećih sorti: zlatni delišes, red čif, jonagold,
                greni smit, gala i fudži.
            </p>
        </div>
        <div class="large-2 columns text-center">
            <a class="button small" href="#">Galerija slika</a>
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

    <div class="row wide promo-sok">
        <div class="large-4 columns">
            <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/<?php echo $promo->image1; ?>" alt="" class="sok-logo"/>
            &nbsp;
        </div>
        <div class="large-4 columns">
            <article>
	            <?php echo $promo->content; ?>
            </article>
        </div>
        <div class="large-4 columns">
            <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/<?php echo $promo->image2; ?>" alt=""/>
        </div>
    </div>

</div>