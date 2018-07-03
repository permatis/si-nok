var geocoder;
var map;
var marker;

function initMap() {
    var latlng = new google.maps.LatLng(-7.086464, 110.361822);
    var infowindow = new google.maps.InfoWindow();
    var myOptions = {
        zoom: 15,
        center: latlng,
        // mapTypeId: google.maps.MapTypeId.TERRAIN
        styles:
        [
          {
            "elementType": "labels",
            "stylers": [
              {
                "visibility": "on"
              }
            ]
          },
          {
            "featureType": "administrative.land_parcel",
            "stylers": [
              {
                "visibility": "off"
              }
            ]
          },
          {
            "featureType": "administrative.neighborhood",
            "stylers": [
              {
                "visibility": "off"
              }
            ]
          }
        ]
    };
    map = new google.maps.Map(document.getElementById("map"), myOptions);


    var rendererOptions = {
        map: map,
      preserveViewport: true
    };

    directionsDisplay = new google.maps.DirectionsRenderer(rendererOptions);
    var point1 = new google.maps.LatLng(-7.087059, 110.361934);
    var point2 = new google.maps.LatLng(-7.086464, 110.361822);
    var wps = [
      { location: point1 },
      { location: point2 }
    ];

    var org = new google.maps.LatLng(-7.087673, 110.361466);
    var dest = new google.maps.LatLng(-7.075689, 110.360219);
    var request = {
        origin: org,
        destination: dest,
        waypoints: wps,
        travelMode: google.maps.DirectionsTravelMode.DRIVING
    };
    directionsService = new google.maps.DirectionsService();
    directionsService.route(request, function(response, status) {
        if (status == google.maps.DirectionsStatus.OK) {
            directionsDisplay.setDirections(response);
        } else
            alert('failed to get directions');
    });

    var service = new google.maps.DistanceMatrixService();
    service.getDistanceMatrix({
        origins: [org, point2],
        destinations: [point1,  dest],
        travelMode: 'DRIVING',
        avoidHighways: false,
        avoidTolls: false,
    }, callback);

  function callback(response, status) {
     if(status=="OK") {
         console.log(response.originAddresses);
         console.log(response.destinationAddresses);
         console.log(response.rows);
     }
  }

}
