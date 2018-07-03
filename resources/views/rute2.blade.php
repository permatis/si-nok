<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sistem Informasi Peta Administrasi dan Peta Inovasi</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
    <link rel="stylesheet" rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="navbar-fixed">
        <nav class="red accent-3">
            <div class="nav-wrapper">
                <a href="#" class="brand-logo" title="Sistem Informasi Peta Administrasi & Peta Inovasi">
                    <span>Si-PAPI</span>
                    <class class="childname">Sistem Informasi Peta Potensi & Peta Inovasi</span>
                </a>
                <a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                 <a href="#" data-target="slide-out" class="right sidenav-trigger"><i class="material-icons">place</i></a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="{{ url('/') }}">Home</a></li>
                    <li class="active">
                        <a class="dropdown-trigger" href="#" data-target="dropdown-web">
                            Rute Wisata<i class="material-icons right">arrow_drop_down</i>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <ul class="sidenav" id="nav-mobile">
        <li><a href="{{ url('/') }}">Home</a></li>
        <li class="active">
            <a class="dropdown-trigger" href="#" data-target="dropdown-mobile">
                Rute Wisata<i class="material-icons right">arrow_drop_down</i>
            </a>
        </li>
    </ul>
    <ul id="dropdown-mobile" class="dropdown-content">
      <li><a href="{{ url('/rute1') }}">Rute 1</a></li>
      <li><a href="{{ url('/rute2') }}">Rute 2</a></li>
    </ul>
    <ul id="dropdown-web" class="dropdown-content">
      <li><a href="{{ url('/rute1') }}">Rute 1</a></li>
      <li><a href="{{ url('/rute2') }}">Rute 2</a></li>
    </ul>
    <div id="map-container">
        <div id="map"></div>
    </div>

    <div class="info-rute hide-on-med-and-down">
            <h5>Rute Kunjungan 2:</h5>
            <ul class="collapsible">
              <li>
                <div class="collapsible-header">
                  <i class="material-icons">place</i>
                  A. Kelurahan Gunungpati
                  <span class="badge">0 km - 0 min</span></div>
                <div class="collapsible-body">
                    <table class="table striped">
                        <tbody>
                            <tr><th>Nama Tempat</th><td>HERMAN JAYA</td></tr>
                            <tr><th>Alamat</th><td>liontin, gelang, kalung dari monel</td></tr>
                            <tr><th>Keterangan</th><td>HERI TAUBAROKAH</td></tr>
                        </tbody>
                    </table>
                    <img src="images/gunungpati.JPG" alt="">
                </div>
              </li>
              <li>
                <div class="collapsible-header">
                  <i class="material-icons">place</i>
                  B. Konveksi Mitayani
                  <span class="badge">0.5 km - 1 min</span></div>
                <div class="collapsible-body">
                    <table class="table striped">
                        <tbody>
                            <tr><th>Nama Tempat</th><td>HERMAN JAYA</td></tr>
                            <tr><th>Alamat</th><td>liontin, gelang, kalung dari monel</td></tr>
                            <tr><th>Keterangan</th><td>HERI TAUBAROKAH</td></tr>
                        </tbody>
                    </table>
                    <img src="images/gunungpati.JPG" alt="">
                </div>
              </li>
            </ul>
      </div>
    <script src="js/jquery-3.3.1.min.js" charset="utf-8"></script>

    <ul class="sidenav rute" id="slide-out">
        <ul class="collapsible">
          <li>
            <div class="collapsible-header">
              <i class="material-icons">place</i>
              A. Konveksi Mitayani
              <span class="badge">1</span></div>
                <div class="collapsible-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                        velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                        non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                </div>
            </li>
          <li>
            <div class="collapsible-header">
              <i class="material-icons">place</i>
              A. Konveksi Mitayani
              <span class="badge">1</span></div>
                <div class="collapsible-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                        velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                        non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                </div>
            </li>
         </ul>
        <!-- <li><a href="{{ url('/') }}">Home</a></li> -->
    </ul>

    <script type="text/javascript" src="js/materialize.min.js"></script>
    <script src="js/rute2.js"></script>
    <script src="https://maps.google.com/maps/api/js?key=AIzaSyD1HOkkPnWMgiT1QxuGtknmpPlGc0Q3L1E&callback=initMap&libraries=places"></script>
    <script type="text/javascript">
    $(document).ready(function(){
        $('.sidenav').sidenav();
        $('.rute').sidenav({
            edge: 'right'
        });
        $(".dropdown-trigger").dropdown();
        $('.collapsible').collapsible();
    });
    </script>
</body>
</html>
