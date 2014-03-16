<?php foreach($albums as $album): ?>
	<?php echo $album->name; ?>
	<?php echo $album->alias; ?>
	<?php echo $album->image; ?>
<?php endforeach; ?>
<?php foreach($images as $image): ?>
	<?php echo $image->title; ?>
	<?php echo $image->caption; ?>
<?php endforeach; ?>
<div class="bar green">
    <div class="row collapse wide main-gallery">
        <div class="clearfix banner-line top"></div>
        <div class="logo-image"></div>

        <ul class="gallery-bxslider">
            <li>
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/gallery/tresnja/sweet cherries Greeny Arandjelovac_1-1220.jpg" alt="Greeny tresnja" title="Ovo je neki caption"/>
            </li>
            <li>
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/gallery/tresnja/sweet%20cherries%20Greeny%20Arandjelovac_1-1220.jpg" alt="Greeny tresnja"/>
            </li>
            <li>
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/gallery/tresnja/sweet%20cherry%20tree%20Greeny%20Arandjelovac-1220.jpg" alt="Greeny tresnja"/>
            </li>

        </ul>
        <div class="clearfix banner-line bottom"></div>
    </div>
</div>

<div class="bar gray">
    <div class="row collapse wide gallery-albums">
        <ul class="clearfix albums-bxslider">
            <li>
                <a href="#">
                    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/gallery/albums/greeny-thumb-jabuke.jpg" alt="Greeny tresnja"/>
                <span class="thumb-overlay"></span>
                    <span class="album-name">Skladistenje</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/gallery/albums/greeny-thumb-betonski-stubovi.jpg" alt="Greeny tresnja"/>
                <span class="thumb-overlay"></span>
                    <span class="album-name">Skladistenje</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/gallery/albums/greeny-thumb-proizvodnja.jpg" alt="Greeny tresnja"/>
                <span class="thumb-overlay"></span>
                    <span class="album-name">Skladistenje</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/gallery/albums/greeny-thumb-sortiranje.jpg" alt="Greeny tresnja"/>
                <span class="thumb-overlay"></span>
                    <span class="album-name">Skladistenje</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/gallery/albums/greeny-thumb-skladistenje.jpg" alt="Greeny tresnja"/>
                    <span class="thumb-overlay"></span>
                    <span class="album-name">Skladistenje</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/gallery/albums/greeny-thumb-skladistenje.jpg" alt="Greeny tresnja"/>
                    <span class="thumb-overlay"></span>
                    <span class="album-name">Skladistenje</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/gallery/albums/greeny-thumb-skladistenje.jpg" alt="Greeny tresnja"/>
                    <span class="thumb-overlay"></span>
                    <span class="album-name">Skladistenje</span>
                </a>
            </li>
        </ul>

        <div class="albums-navigation clearfix">
            <span class="albums-prev"></span>
            <span class="albums-next"></span>
        </div>
    </div>
</div>

<?php //$this->renderPartial('_promo-banner', array('promo' => $promo)); ?>