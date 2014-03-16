<div class="bar green">
    <div class="row collapse wide main-gallery">
        <div class="clearfix banner-line top"></div>
        <div class="logo-image"></div>

        <ul class="gallery-bxslider">
            <?php foreach($images as $image): ?>
                <li>
                    <img src="<?php echo Yii::app()->request->baseUrl . '/img/gallery/' . $image->album->alias . '/' . $image->title; ?>" alt="<?php echo $image->caption; ?>" title="<?php echo $image->caption; ?>"/>
                </li>
            <?php endforeach; ?>
        </ul>
        <div class="clearfix banner-line bottom"></div>
    </div>
</div>

<div class="bar gray">
    <div class="row collapse wide gallery-albums">
        <ul class="clearfix albums-bxslider">
            <?php foreach($albums as $album): ?>
                <li>
                    <a href="<?php echo Yii::app()->request->baseUrl . '/galerija-slika/'.$album->alias; ?>" class="<?php echo($album->alias==$active)? 'active' : '';?>">
                        <img src="<?php echo Yii::app()->request->baseUrl . '/img/gallery/albums/' . $album->image; ?>" alt="<?php echo $album->name; ?>" title="<?php echo $album->name; ?>"/>
                    <span class="thumb-overlay"></span>
                        <span class="album-name"><?php echo $album->name; ?></span>
                    </a>
                </li>
            <?php endforeach; ?>
        </ul>

        <div class="albums-navigation clearfix">
            <span class="albums-prev"></span>
            <span class="albums-next"></span>
        </div>
    </div>
</div>

<?php //$this->renderPartial('_promo-banner', array('promo' => $promo)); ?>