<%-- 
    Document   : CurrentPosition
    Created on : Feb 19, 2018, 10:58:00 PM
    Author     : Book
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            #map {
                height: 400px;
                width: 1000px;
            }
        </style>
    </head>
    <body>
        <h3></h3>
    <center><div id="map"></div></center>
    <script>
        var map, infoWindow;
        function initMap() {

            var uluru;
            map = new google.maps.Map(document.getElementById('map'), {
                zoom: 12,
                center: uluru
            });
            var marker = new google.maps.Marker({
                position: uluru,
                map: map
            });



            infoWindow = new google.maps.InfoWindow;

            // Try HTML5 geolocation.
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function (position) {
                    var pos = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };

                    infoWindow.setPosition(pos);
                    infoWindow.setContent('Location found.');
                    infoWindow.open(map);
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


    </script>
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC1eb_09Gm7rRg3SOMROgnIoTG5_kdrycA&callback=initMap">
    </script>
</body>
</html>
