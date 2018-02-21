<%-- 
    Document   : HospitalLocation
    Created on : Feb 20, 2018, 4:11:45 PM
    Author     : Book
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>Hospital Location</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script src="js/HospitalLocation.js"></script>

    </head>

    <body>
        <div class="header">
            <nav>
                <a href="Home.jsp"><img src="img/Logo.png" class="logo"></a>
                <ul class="nav nav-pills">
                    <li><a href="Emergency.jsp">Emergency</a></li>
                    <li><a href="SOS.jsp">SOS</a></li>
                    <li><a href="Lost.jsp">Lost</a></li>

                </ul>
            </nav>
        </div>
        <div id="map"></div>
        <c:forEach items="${hosLoList}" var="hos">
            <input type="hidden" name="hos[${hos.id}]" value='{ "lat":"${hos.lat}", "lng":"${hos.lng}","address": "${hos.address}", "Name": "${hos.name}" , "Tel": "${hos.tel}" }' />
        </c:forEach>
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC1eb_09Gm7rRg3SOMROgnIoTG5_kdrycA&callback=initMap">
        </script>
    </body>
    <script>
        var map;
        const HospitalLocation = []
        const hospital = Array.from(document.querySelectorAll("input[name^='hos[']"))
        hospital.map(hos => {
            HospitalLocation.push(JSON.parse(hos.value))
        })
        var infowindow = new google.maps.InfoWindow();
        var marker, i;
        var img = 'img/hospital.png';
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: {lat: 13.650946, lng: 100.494738},
                zoom: 10
            });
            HospitalLocation.map(location => {
                marker = new google.maps.Marker({
                    position: new google.maps.LatLng(location.lat, location.lng),
                    map: map,
                    icon: 'img/hospital.png'
                })
            })
        }
        window.onload = initMap;
    </script>
</html>
