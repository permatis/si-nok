<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dropzone</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="{{ asset('css/materialize.min.css') }}"  media="screen,projection"/>
    <link rel="stylesheet" rel="stylesheet" href="{{ asset('css/styles.css') }}">
</head>
<body>

    <div class="container" style="margin-top: 40px;">
       <div class="card-panel">
           <div class="row">
               <span class="card-title">
                   <h5>Input Potensi</h5>
               </span>
                <form class="col s12" action="{{ url('/test') }}" method="post" enctype="multipart/form-data">
                {{ csrf_field() }}
                <div class="row">
                   <div class="input-field col s6">
                      <input placeholder="Nama Tempat" name="nama" type="text">
                      <label for="nama">Nama Tempat</label>
                   </div>
                   <div class="input-field col s6">
                      <input placeholder="Nama Pemilik" name="pemilik" type="text">
                      <label for="pemilik">Nama Pemilik</label>
                   </div>
                </div>
                <div class="row">
                   <div class="input-field col s12">
                      <input placeholder="Alamat" type="text" name="alamat">
                      <label for="alamat">Alamat</label>
                   </div>
                </div>
                <div class="row">
                   <div class="input-field col s12">
                      <textarea placeholder="Keterangan" id="keterangan" name="keterangan" class="materialize-textarea"></textarea>
                      <label for="keterangan">Keterangan</label>
                   </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                       <input placeholder="Latitude" name="lat" type="text">
                       <label for="lat">Latitude</label>
                    </div>
                    <div class="input-field col s6">
                       <input placeholder="Longtitude" name="long" type="text">
                       <label for="long">Longtitude</label>
                    </div>
                </div>
                <div class="row">
                    <div class="file-field input-field col s12">
                        <div class="btn">
                            <span>File</span>
                            <input type="file" id="gambar" name="gambar[]" multiple>
                        </div>
                        <div class="file-path-wrapper">
                            <input class="file-path validate" type="text" placeholder="Upload satu atau banyak gambar">
                        </div>
                    </div>
                </div>
                <div id="prev"></div>
                <div class="row">
                    <div class="input-field col s12">
                        <button type="submit" class="btn">Simpan</button>
                    </div>
                </div>
                </form>
           </div>
        </div>
    </div>


    <script src="{{ asset('js/jquery-3.3.1.min.js') }}" charset="utf-8"></script>
    <script type="text/javascript" src="{{ asset('js/materialize.min.js') }}"></script>
    <script type="text/javascript">
    if (window.File && window.FileList && window.FileReader) {
        $("#gambar").on("change", function(e) {
          var files = e.target.files,
            filesLength = files.length;
              for (var i = 0; i < filesLength; i++) {
                var f = files[i]
                var fileReader = new FileReader();
                fileReader.onload = (function(e) {
                  var file = e.target;
                  $("<div class='preview'><div class='card'>"+
                      "<div class='card-image'><img src='"+ e.target.result +"'>"+
                          "<span class='hapus'>x</span>"+
                      "</div></div></div>").appendTo('#prev');

                  $(".hapus").click(function(){
                      $(".preview").remove();
                      $(".file-path-wrapper input").val('');
                      $("#gambar").val("");
                  });

                });
                fileReader.readAsDataURL(f);
              }
            });
            } else {
                alert("Your browser doesn't support to File API")
            }
    </script>
</body>
</html>
