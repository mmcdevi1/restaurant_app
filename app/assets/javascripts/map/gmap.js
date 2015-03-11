$(document).ready(function () {

    var addresses = ['san francisco, ca', 'los angeles, ca', 'bakersfield, ca'];
    var map;
    var elevator;
    var latlng2 = function () {
      $.getJSON('http://maps.googleapis.com/maps/api/geocode/json?address='+addresses[0]+'&sensor=false', null, function (data) {
            var p = data.results[0].geometry.location;
            var latlng = new google.maps.LatLng(p.lat, p.lng);
            new google.maps.Marker({
                position: latlng,
                map: map
            });

        });
    }
    var myOptions = {
        center: new google.maps.LatLng(latlng2().latlng),
        zoom: 3,
        mapTypeId: google.maps.MapTypeId.NORMAL,
        panControl: true,
        scaleControl: false,
        streetViewControl: true,
        overviewMapControl: true
    };
    map = new google.maps.Map($('#map-canvas')[0], myOptions);

    

    for (var x = 0; x < addresses.length; x++) {
        $.getJSON('http://maps.googleapis.com/maps/api/geocode/json?address='+addresses[x]+'&sensor=false', null, function (data) {
            var p = data.results[0].geometry.location;
            var latlng = new google.maps.LatLng(p.lat, p.lng);
            new google.maps.Marker({
                position: latlng,
                map: map
            });

        });
    }

});