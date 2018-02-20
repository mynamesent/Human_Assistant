<%-- 
    Document   : humanAssist
    Created on : Feb 20, 2018, 10:57:00 AM
    Author     : Cornelius
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        
        
    <style>

        body{
          background-color: #5EA1B4
        }

        .box{
            background-color:white;
            width: 800px;
            height: 1000px;
            display: block;
            margin-left: auto;
            margin-right: auto;
            margin-top: 50px;
            margin-bottom:  50px;
            padding: 50px;
            border-radius: 10px;

        }
        img {
            float:left;}


        h1 {
            display:inline-block;
        }
        .newspaper1 {
        columns: 100px 3;
        }
        .newspaper2 {
        columns: 100px 3;
        }
        .column1 {
            float: left;
            width: 30%;
            padding: 10px;
            text-align: right;
            color: blue;
        }
        .column2 {
            float: left;
            width: 70%;
            padding: 10px;
            color: lightskyblue;
        }

    </style>
        <title>Human Assistant</title>
    </head>
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBNpnSxOve66l6a3TwCGDI4QqFd1yHhM-A&callback=initMap">
    </script>
    <body>
        <div id="map" style="height:200px; width:300px"/>

        </div>
    </body>
    <script>
        function initMap() {
            var myLatLng = {lat: 36.2684, lng: 98.369};

            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 4,
                center: myLatLng
            });

            var marker = new google.maps.Marker({
                position: myLatLng,
                map: map,
                title: 'Hello World!'
            });
        }
    </script>
</html>
