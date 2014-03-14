/**
 * Created by Golub on 2/10/14.
 */
$(document).ready( function(){
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 6,
        center: new google.maps.LatLng(44.3250426,20.5923485),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    });
    var myLatlng = new google.maps.LatLng(44.3250426,20.5923485);
    var marker = new google.maps.Marker({
        draggable: true,
        position: myLatlng,
        map: map,
        title: "Your location"
    });

});
