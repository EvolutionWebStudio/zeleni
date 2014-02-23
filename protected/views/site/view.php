<?php
echo $category->alias;

foreach($subCategories as $sc):
    echo $sc->alias;
endforeach;