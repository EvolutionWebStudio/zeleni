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
        <div class="row collapse wide main-banner">
            <div class="logo-image"></div>

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
            <div class="banner-bottom-line"></div>
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



</div>