<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sistem Informasi Potensi dan Pengembangan Investasi</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="{{ asset('css/materialize.min.css') }}"  media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="{{ asset('css/slick.css') }}"/>
    <link type="text/css" rel="stylesheet" href="{{ asset('css/slick-theme.css') }}"/>
    <link rel="stylesheet" rel="stylesheet" href="{{ asset('css/styles.css') }}">
    <script src="{{ asset('js/jquery-3.3.1.min.js') }}" charset="utf-8"></script>
</head>
<body>
    <div class="navbar-fixed">
        <nav class="red accent-3">
            <div class="nav-wrapper">
                <a href="#" class="brand-logo" title="Sistem Informasi Peta Administrasi & Peta Inovasi">
                    <span>SI-POPI</span>
                    <class class="childname">Sistem Informasi Potensi dan Pengembangan Investasi</span>
                </a>
                <a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                 <a href="#" data-target="slide-out" class="right sidenav-trigger"><i class="material-icons">place</i></a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="{{ url('/') }}">Home</a></li>
                    <li class="active">
                        <a class="dropdown-trigger" href="#" data-target="dropdown-web">
                            Rute Potensi<i class="material-icons right">arrow_drop_down</i>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <ul class="sidenav mobiles" id="nav-mobile">
        <li><a href="{{ url('/') }}">Home</a></li>
        <li class="active">
            <a class="dropdown-trigger" href="#" data-target="dropdown-mobile">
                Rute Potensi<i class="material-icons right">arrow_drop_down</i>
            </a>
        </li>
    </ul>
    <ul id="dropdown-mobile" class="dropdown-content">
      <li><a href="{{ url('/rute/masyarakat') }}">Rute Kemasyarakatan</a></li>
      <li><a href="{{ url('/rute/wilayah') }}">Rute Kewilayahan</a></li>
      <li><a href="{{ url('/rute/pkk1') }}">Rute PKK 1</a></li>
      <li><a href="{{ url('/rute/pkk2') }}">Rute PKK 2</a></li>
    </ul>
    <ul id="dropdown-web" class="dropdown-content">
      <li><a href="{{ url('/rute/masyarakat') }}">Rute Kemasyarakatan</a></li>
      <li><a href="{{ url('/rute/wilayah') }}">Rute Kewilayahan</a></li>
      <li><a href="{{ url('/rute/pkk1') }}">Rute PKK 1</a></li>
      <li><a href="{{ url('/rute/pkk2') }}">Rute PKK 2</a></li>
    </ul>
    <div id="map-container">
        <div id="map"></div>
    </div>

    <div class="info-rute hide-on-med-and-down">
            <h5>Rute PKK 1 :</h5>
            <ul class="collapsible">
                @if(count($potensi))
                <?php $alpha = 'A'; ?>
                @foreach($potensi as $p)
              <li>
                <div class="collapsible-header">
                  <i class="material-icons">place</i>
                      {{ $alpha++ }}. {{ ucwords($p->nama) }}
                  <!-- <span class="badge rute-font">0 km - 0 min</span> -->
              </div>
                <div class="collapsible-body">
                    <table class="table striped">
                        <tbody>
                            <tr><th>Nama Tempat</th><td>{{ ucfirst($p->nama) }}</td></tr>
                            <tr><th>Nama Pemilik</th><td>{{ $p->pemilik }}</td></tr>
                            <tr><th>Alamat</th><td>{{ $p->alamat }}</td></tr>
                            <tr><th>Keterangan</th><td>{{ $p->keterangan }}</td></tr>
                        </tbody>
                    </table>
                    <div class="rute-slider">
                        @foreach($p->gambar as $gb)
                        <div><img src="{{ asset('images/upload/'.$gb->files) }}"></div>
                        @endforeach
                    </div>
                </div>
              </li>
              @endforeach
              @endif

      </div>

    <ul class="sidenav rute" id="slide-out">
        <ul class="collapsible">
            @if(count($potensi))
            <?php $alpha = 'A'; ?>
            @foreach($potensi as $p)
          <li>
            <div class="collapsible-header">
                  {{ $alpha++ }}. {{ ucwords($p->nama) }}
              <!-- <span class="badge rute-font">0 km - 0 min</span> -->
             </div>
            <div class="collapsible-body rute-mobile">
                <p>{{ $p->keterangan }}</p>
                <div class="rute-slider">
                    @foreach($p->gambar as $gb)
                    <div><img src="{{ asset('images/upload/'.$gb->files) }}"></div>
                    @endforeach
                </div>
            </div>
          </li>
          @endforeach
          @endif
         </ul>
        <!-- <li><a href="{{ url('/') }}">Home</a></li> -->
    </ul>

    <script type="text/javascript" src="{{ asset('js/materialize.min.js') }}"></script>
    <!-- <script src="{{ asset('js/rute1.js') }}"></script> -->
    <script src="{{ asset('js/slick.min.js') }}"></script>
    <script type="text/javascript">
    $(document).ready(function(){
        $('.mobiles').sidenav();
        $('.rute').sidenav({
            edge: 'right'
        });
        $(".dropdown-trigger").dropdown();
        $('.collapsible').collapsible();
        // $('.carousel').carousel();
        $('.rute-slider').slick({
            dots: true,
            autoplay: true,
          speed: 500,
          fade: true,
          cssEase: 'ease',
          infinite: true,
          arrows: false,
          adaptiveHeight: true
        });
    });
    </script>
    <script type="text/javascript">
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

        var point1 = new google.maps.LatLng(-7.086985, 110.362628);
        var wps = [
          { location: point1 }
        ];

        var org = new google.maps.LatLng(-7.087673, 110.361466);
        var dest = new google.maps.LatLng(-7.081698, 110.362134);

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
            origins: [org],
            destinations: [point1, dest],
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
    </script>
    <script src="https://maps.google.com/maps/api/js?key=AIzaSyD1HOkkPnWMgiT1QxuGtknmpPlGc0Q3L1E&callback=initMap&libraries=places"></script>
</body>
</html>
