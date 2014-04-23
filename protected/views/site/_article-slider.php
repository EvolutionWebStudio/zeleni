

    <div class="bar" style="background-color: #<?php echo ($category->color)? $category->color : '005C34' ?>">
        <div class="main-banner-wrapper">
            <div class="clearfix main-banner">
                <div class="clearfix banner-line top"></div>
                <div class="logo-image"></div>
                <ul class="article-slider">
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
                                <img src="<?php echo Yii::app()->request->baseUrl . '/img/articles/' . $image->name; ?>" alt="<?php echo $image->name; ?>"/>
                            </div>
                        </li>
                    <?php endforeach; ?>
                </ul>
                <div class="clearfix banner-line bottom"></div>
            </div>
        </div>
    </div>


