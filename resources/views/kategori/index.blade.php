<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Data Kategori</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="{{ asset('css/materialize.min.css') }}"  media="screen,projection"/>
    <link rel="stylesheet" rel="stylesheet" href="{{ asset('css/styles.css') }}">
</head>
<body>
    <div class="container" style="margin-top: 40px;">
       <div class="card-panel">
           <div class="row">
            <span class="card-title">
               <h5>Data Kategori</h5>
            </span>
            <a href="{{ url('ketik/kategori/create') }}" class="btn waves-effect waves-light">Buat Kategori</a>
            <table class="striped highlight">
                <thead>
                    <tr>
                        <th>Nama Kategori</th>
                        <th>Deskripsi</th>
                        <th>Gambar Icon</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @if(count($kategori)> 0)
                    @foreach($kategori as $kat)
                    <tr>
                        <td>{{ $kat->nama }}</td>
                        <td>{{ $kat->deskripsi }}</td>
                        <td>@if($kat->gambar_icon)<img src="{{ asset('images/icons/'.$kat->gambar_icon) }}" alt="">@endif</td>
                        <td>
                            <div class="action-btn">
                            <a href="{{ route('kategori.edit', $kat->id) }}" class="waves-effect waves-light btn-small" title="Edit">
                                <i class="material-icons">create</i>
                            </a>
                            &nbsp;&nbsp;
                            <form action="{{ route('kategori.destroy',$kat->id) }}" method="POST">
                                <input type="hidden" name="_method" value="DELETE">
                                {{ csrf_field() }}
                                <button class=" waves-effect waves-light btn-small" type="submit" title="Hapus">
                                    <i class="material-icons">delete</i>
                                </button>
                            </form>
                            </div>
                        </td>
                    </tr>
                    @endforeach
                    @else
                    <tr>
                        <td colspan="4" class="center"><span>Data kategori masih kosong.</span></td>
                    </tr>
                    @endif
                </tbody>
            </table>
           </div>
       </div>
    </div>
    <script src="{{ asset('js/jquery-3.3.1.min.js') }}" charset="utf-8"></script>
    <script type="text/javascript" src="{{ asset('js/materialize.min.js') }}"></script>
</body>
</html>
