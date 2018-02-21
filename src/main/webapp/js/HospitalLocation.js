/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var latitude;
var longitude;
var infowindow = new google.maps.InfoWindow();
var marker, i;
var img1 = 'img/hospital.png';

var map;
const HospitalLocation = [];
const hospital = Array.from(document.querySelectorAll("input[name^='hos[']"))
hospital.map(hos => {
    HospitalLocation.push(JSON.parse(hos.value))
})
function initMap(latitude, longitude) {
    console.log("initMap")
    if (latitude == undefined || longitude == undefined) {
        map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: 13.6497215, lng: 100.4924436},
            zoom: 20
        });
        console.log(">>>>>" + latitude);
        $("#myModal").modal('show');
    } else {
        document.getElementById("userLocation").innerHTML = latitude + " , " + longitude;
        map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: latitude, lng: longitude},
            zoom: 20
        });
        marker = new google.maps.Marker({
            position: new google.maps.LatLng(latitude, longitude),
            map: map,
        }
        )
        function getLocation() {

            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition);
            }
        }
        async function showPosition(position) {
            console.log("showPosition")
            latitude = await position.coords.latitude;
            longitude = await position.coords.longitude;
            initMap(latitude, longitude);
            console.log(latitude);
            console.log(longitude);
            showPage();
};
window.onload = getLocation;
    }
    }