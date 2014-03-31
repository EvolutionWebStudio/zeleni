<?php Yii::app()->clientScript->registerScriptFile('http://maps.googleapis.com/maps/api/js?sensor=true', CClientScript::POS_END); ?>
<?php Yii::app()->clientScript->registerScriptFile('/js/map.js', CClientScript::POS_END);?>

<div class="small-12 columns">
    <div class="main-map panel2" id="map"></div>
</div>