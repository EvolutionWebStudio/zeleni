<div class="category-header">
    <?php $this->renderPartial('_article-slider', array('category' => $category)); ?>
</div>

<div class="main-wrapper row collapse wide">
    <aside class="main-sidebar columns">
        <nav>
	        <?php $this->widget('zii.widgets.CMenu', Menu::getSidebarMenu()); ?>
        </nav>
    </aside>

    <div class="main-content columns">
        <section>
            <h1 class="article-title"><?php echo $category->title; ?></h1>
            <nav class="article-menu">
                <ul>
	                <?php if($subCategories): foreach($subCategories as $sc): ?>
		                <li><a href="<?php echo ($sc->type == Category::TYPE_SELF_LINK)?'#' . $sc->alias : Yii::app()->request->getBaseUrl(true).'/'.$sc->alias; ?>"><?php echo $sc->title; ?></a></li>
	                <?php endforeach; endif;?>
                </ul>
            </nav>
	        <div class="article-content">
                <?php if($post): ?>
                    <article>
                        <h2><?php echo $post->title; ?></h2>
                        <?php echo $post->content; ?>
                    </article>

                    <?php
                        if($category->alias == 'lokacija')
                            $this->renderPartial('_location_map');
                    ?>
                <?php endif; ?>

                <?php if($subCategories): ?>
                    <?php foreach($subCategories as $posts): ?>
                        <?php foreach($posts->posts as $p): ?>
			                <?php if($posts->type == Category::TYPE_SELF_LINK): ?>
                            <article>
                                <a name=<?php echo $posts->alias; ?>></a>
                                <h2><?php echo $p->title; ?></h2>
                                <?php echo $p->content; ?>
                                <?php if($p->link): ?>
                                    <a href="<?php echo $p->link; ?>" class="article-link"><?php echo $p->link_text; ?> ></a>
                                <?php endif; ?>
                            </article>
				            <?php endif; ?>
                        <?php endforeach; ?>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>
        </section>
    </div>
</div>
<?php $this->renderPartial('_promo-banner', array('promo' => $promo)); ?>