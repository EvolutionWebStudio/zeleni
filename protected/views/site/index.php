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

<div class="slider">
    <div class="bar green">
        <div class="row collapse wider main-banner">
            <div class="logo-image columns"></div>

            <article class="caption-wrapper columns">
                <hgroup>
                    <h1>Jabuka</h1>
                    <h2>iz aranđelovačkih voćnjaka</h2>
                </hgroup>

                <p>Čuvamo svoje proizvode u kontrolisanim temperaturnim i atmosferskim uslovima radi
                    održavanja kvaliteta i svežine tokom čitave godine.</p>
            </article>

            <div class="image-wrapper wider-image columns">
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/slider-placeholder.png" alt="Slider placeholder"/>
            </div>
        </div>
        <div class="clearfix banner-bottom-line"></div>
    </div>

    <div class="bar gray">
        <div class="row wide">
            <nav class="slider-menu">
                <ul class="clearfix">
                    <li class="large-2 columns"><a href="#"><span class="slide-number">01</span> Garancija kvaliteta <span class="link-arrow">&gt;</span></a></li>
                    <li class="large-2 columns"><a href="#"><span class="slide-number">02</span> Greeny EveryDay <span class="link-arrow">&gt;</span></a></li>
                    <li class="large-2 columns active"><a href="#"><span class="slide-number">03</span> Sveže voće <span class="link-arrow">&gt;</span></a></li>
                    <li class="large-2 columns"><a href="#"><span class="slide-number">04</span> Trešnja <span class="link-arrow">&gt;</span></a></li>
                    <li class="large-2 columns"><a href="#"><span class="slide-number">05</span> Jagoda <span class="link-arrow">&gt;</span></a></li>
                    <li class="large-2 columns"><a href="#"><span class="slide-number">06</span> Jabuka <span class="link-arrow">&gt;</span></a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>