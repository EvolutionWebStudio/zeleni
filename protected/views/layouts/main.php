<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<?php if(!isset(Yii::app()->session['_lang'])) Yii::app()->session['_lang'] = 'sr';?>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="<?php echo Yii::app()->session['_lang']; ?>"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang="<?php echo Yii::app()->session['_lang']; ?>"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang="<?php echo Yii::app()->session['_lang']; ?>"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="<?php echo Yii::app()->session['_lang']; ?>"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title><?php echo CHtml::encode($this->pageTitle); ?></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

        <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/normalize.css" />
        <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/foundation.css" />
        <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/js/bxslider/jquery.bxslider.css" />
        <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
        <script src="<?php echo Yii::app()->request->baseUrl; ?>/js/vendor/modernizr.js"></script>
    </head>

    <body>
    <!--[if lt IE 7]>
    <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <div class="bar gray">
        <nav class="info-menu">
            <div class="row collapse wide">
	            <?php $this->widget('zii.widgets.CMenu', Menu::getTopMenu()); ?>
                <ul class="large-5 columns text-right">
                    <li>T:+381 34 6709-141</li>
                    <li>F:+381 34 6709-230</li>
                    <li>e-mail: greeny@vozd.net</li>
                </ul>
                <ul class="large-2 columns language-select">
                    <li><a href="#" class="flag serbia" ></a></li>
                    <li><a href="#" class="flag russia" ></a></li>
                    <li><a href="#" class="flag unitedkingdom" ></a></li>
                </ul>
            </div>
        </nav>
    </div>

    <header class="main-header">
        <div class="row collapse wide">
            <h1 class="logo large-4 columns clearfix">
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/greeny-logo-image.png" alt=""/>
                <span>GREENY</span>proizvodnja i čuvanje voća</h1>
            <nav class="main-menu large-8 columns">
                <?php $this->widget('application.components.GMenu', Menu::getMainMenu()); ?>
            </nav>
        </div>
    </header>

    <?php echo $content; ?>

    <div class="bar violet">
        <footer class="main-footer">
            <div class="row collapse wide">
                <span class="large-4 columns copyright">&copy; <?php echo date('Y'); ?> <strong>Greeny</strong> doo Aranđelovac</span>
                <ul class="large-8 columns text-right">
                    <li>Orašac bb, Aranđelovac, Srbija</li>
                    <li>T:+381 34 6709-141</li>
                    <li>F:+381 34 6709-230</li>
                    <li>e-mail: greeny@vozd.net</li>
                </ul>
            </div>
        </footer>
    </div>

    <script src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/js/foundation.min.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/js/plugins.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/js/bxslider/jquery.bxslider.min.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/js/main.js"></script>

    <script>
        $(document).foundation();

        $(document).ready(function(){
            $('.bxslider').bxSlider({
                pagerCustom: '#bx-pager',
                controls: false,
                auto: true

            });
            $('.gallery-bxslider').bxSlider({
                captions: true
            });
            $('.albums-bxslider').bxSlider({
                minSlides: 5,
                maxSlides: 5,
                slideWidth: 254,
                slideMargin: 0,
                nextSelector: '.albums-navigation .albums-next',
                prevSelector: '.albums-navigation .albums-prev',
                nextText: '',
                prevText: '',
                captions: true
            });
        });
    </script>

    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
    <script>
        (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='//www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
        ga('create','UA-XXXXX-X');ga('send','pageview');
    </script>
    </body>
</html>
