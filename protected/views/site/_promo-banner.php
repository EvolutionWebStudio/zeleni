<div class="row wide promo-sok">
    <div class="large-4 columns">
        <a href="#">
            <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/<?php echo $promo->image1; ?>" alt="" class="sok-logo"/>
        </a>
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