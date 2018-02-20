/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var map, infoWindow;
function initMap() {

    var uluru;
    map = new google.maps.Map(document.getElementById('map'), {
        zoom: 12,
        center: uluru
    });
//    var marker = new google.maps.Marker({
//        position: uluru,
//        map: map
//    });
//    var marker = new google.maps.Marker({
//        position: uluru,
//        map: map,
//        title: 'Hello World!'
//    });



    infoWindow = new google.maps.InfoWindow;

    // Try HTML5 geolocation.
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (position) {
            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };

//            infoWindow.setPosition(pos);
//            infoWindow.setContent('Location found.');
            var marker = new google.maps.Marker({
                position: pos,
                map: map,
                title: 'Hello World!'
            });
//            infoWindow.open(map);
            map.setCenter(pos);

        }, function () {
            handleLocationError(true, infoWindow, map.getCenter());
        });
    } else {
        // Browser doesn't support Geolocation
        handleLocationError(false, infoWindow, map.getCenter());
        infoWindow.setPosition(pos);
        infoWindow.setContent('Location not found. Please accept permission.');
        infoWindow.open(map);
    }


}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
            'Error: The Geolocation service failed.' :
            'Error: Your browser doesn\'t support geolocation.');
    infoWindow.open(map);
}






