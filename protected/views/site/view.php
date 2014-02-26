<div class="category-header">
    <div class="bar green">
        <div class="row collapse wider main-banner">
            <div class="logo-image columns"></div>

            <article class="caption-wrapper columns">
                <hgroup>
                    <h1>Slatko, sočno i hrskavo, naše voće je uvek zdravo i ukusno.</h1>
                </hgroup>
            </article>

            <div class="image-wrapper wider-image columns">
                <img src="<?php echo Yii::app()->request->baseUrl . '/img/' . $category->image; ?>" alt="Clanak placeholder" class="clanak-placeholder"/>
            </div>
        </div>
    </div>
</div>

<div class="main-wrapper row collapse wide">
    <aside class="main-sidebar columns">
        <nav>
	        <?php $this->widget('zii.widgets.CMenu', Category::getSubManu()); ?>
        </nav>
    </aside>

    <div class="main-content columns">
        <section>
            <h1 class="article-title"><?php echo $category->title; ?></h1>
            <nav class="article-menu">
                <ul>
	                <?php foreach($subCategories as $sc): ?>
		                <li><a href="<?php echo '#' . $sc->alias; ?>"><?php echo $sc->title; ?></a></li>
	                <?php endforeach;?>
                </ul>
            </nav>
	        <div class="article-content">
	            <?php foreach($subCategories as $posts): ?>
		            <?php foreach($posts->posts as $p): ?>
			     <a name=<?php echo $posts->alias; ?>></a>
                <article>
                    <h2><?php echo $p->title; ?></h2>
					<?php echo $p->content; ?>
                    <a href="<?php echo $p->link; ?>"><?php echo $p->link_text; ?> ></a>
                </article>
		            <?php endforeach; ?>
	            <?php endforeach; ?>
				<?php if($post): ?>
                <article>
                    <h2><?php echo $post->title; ?></h2>
	                <?php echo $post->content; ?>
                </article>
		        <?php endif; ?>
            </div>
        </section>
    </div>

</div>