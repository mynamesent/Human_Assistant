/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var map;
function initMap() {



var uluru = {lat: 13.7563, lng: 100.5018};
    map = new google.maps.Map(document.getElementById('map'), {
        zoom: 10,
        center: uluru,
        mapTypeId: 'roadmap'
    });

//    var iconBase = 'https://map-icons.com/';
//    var marker = new google.maps.Marker({
//        position: myLatLng,
//        map: map,
//        icon: iconBase + 'map-icon-hospital'
//    });

      var iconBase = 'https://maps.google.com/mapfiles/kml/pal4/';
  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(13.757316, 100.485416),
    map: map,
    icon: iconBase + 'icon63.png'
  });
  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(13.730871, 100.535575),
    map: map,
    icon: iconBase + 'icon63.png'
  });
  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(13.746264, 100.552365),
    map: map,
    icon: iconBase + 'icon63.png'
  });

//    var icons = {
//        Hospital: {
//            icon: iconBase + 'map-icon-hospital'
//        }
//    };

//    var features = [
//        {
//            position: new google.maps.LatLng(13.757973, 100.484998),
//            type: 'Hospital'
//        }
//    ];

    // Create markers.
//    features.forEach(function (feature) {
//        var marker = new google.maps.Marker({
//            position: feature.position,
//            icon: icons[feature.type].icon,
//            map: map
//        });
//    });
}
