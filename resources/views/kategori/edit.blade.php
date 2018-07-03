<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit Kategori</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="{{ asset('css/materialize.min.css') }}"  media="screen,projection"/>
    <link rel="stylesheet" rel="stylesheet" href="{{ asset('css/styles.css') }}">
</head>
<body>

    <div class="container" style="margin-top: 40px;">
       <div class="card-panel">
           <div class="row">
               <span class="card-title">
                   <h5>Edit Kategori</h5>
               </span>
                <form class="col s12" action="{{ url('/ketik/kategori/'.$kategori->id) }}" method="post" enctype="multipart/form-data">
                <input type="hidden" name="_method" value="PUT">
                {{ csrf_field() }}
                <div class="row">
                   <div class="input-field col s12">
                      <input placeholder="Nama Kategori" name="nama" type="text" value="{{ $kategori->nama }}">
                      <label for="nama">Nama Kategori</label>
                   </div>
                </div>
                <div class="row">
                   <div class="input-field col s12">
                      <input placeholder="Deskripsi" type="text" name="deskripsi" value="{{ $kategori->deskripsi }}">
                      <label for="deskripsi">Deskripsi</label>
                   </div>
               </div>
                <div class="row">
                    <div class="file-field input-field col s12">
                        <div class="btn">
                            <span>File</span>
                            <input type="file" id="gambar" name="gambar">
                        </div>
                        <div class="file-path-wrapper">
                            <input class="file-path" type="text" placeholder="Upload icon berbentuk png">
                        </div>
                    </div>
                </div>
                <div id="prev"></div>
                <div class="row">
                    <div class="input-field col s12">
                        <button type="submit" class="btn">Update</button>
                        <a href="{{ url('ketik/kategori') }}" class="btn waves-effect waves-light blue">Kembali</a>
                    </div>
                </div>
                </form>
           </div>
        </div>
    </div>

    <script src="{{ asset('js/jquery-3.3.1.min.js') }}" charset="utf-8"></script>
    <script type="text/javascript" src="{{ asset('js/materialize.min.js') }}"></script>
</body>
</html>
