function initMap() {
    var latlng = new google.maps.LatLng(-7.087673, 110.361466);
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 12,
        center: latlng
    });

    var contentString =
        '<h4>Kelurahan Gunungpati</h4>' +
        '<div>' +
        '<p class="map-content">Kelurahan Gunungpati berada di Jl. RM. Tjondro Koesoemo Kode Pos 50225 Kecamatan Gunungpati Kota Semarang.</p>' +
        '<img class="map-image" src="images/gunungpati.jpg" />' +
        '</div>';
    var infowindow = new google.maps.InfoWindow({
        content: contentString
    });
    var marker = new google.maps.Marker({
        position: latlng,
        map: map,
        title: 'KANTOR KELURAHAN GUNUNGPATI KEC. GUNUNGPATI'
    });

    marker.addListener('click', function() {
        infowindow.open(map, marker);
    });
}
