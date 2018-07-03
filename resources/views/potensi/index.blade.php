<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Data Potensi</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="{{ asset('css/materialize.min.css') }}"  media="screen,projection"/>
    <link rel="stylesheet" rel="stylesheet" href="{{ asset('css/styles.css') }}">
</head>
<body>
    <div class="container-fluid" style="margin-top: 40px;">
       <div class="card-panel">
           <div class="row">
            <span class="card-title">
               <h5>Data Potensi</h5>
            </span>
            <a href="{{ url('ketik/potensi/create') }}" class="btn waves-effect waves-light">Buat Potensi</a>
            <table class="striped highlight">
                <thead>
                    <tr>
                        <th width="3%">No</th>
                        <th width="10%">Nama Tempat</th>
                        <th width="15%">Pemilik</th>
                        <th width="10%">Alamat</th>
                        <th width="50%">Keterangan</th>
                        <th width="7%">Kategori</th>
                        <th width="5%">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @if(count($potensi) > 0)
                    <?php $no = 1; ?>
                    @foreach($potensi as $p)
                    <tr>
                        <td>{{ $no++ }}</td>
                        <td>{{ $p->nama }}</td>
                        <td>{{ $p->pemilik }}</td>
                        <td>{{ $p->alamat }}</td>
                        <td>{{ $p->keterangan }}</td>
                        <td>
                            @foreach($p->kategori as $kat)
                            <span class="new badge" data-badge-caption="{{ $kat->nama }}"></span>
                            @endforeach
                        </td>
                        <td>
                            <div class="action-btn">
                            <!-- <a href="{{ route('potensi.edit', $p->id) }}" class="waves-effect waves-light btn-small" title="Edit">
                                <i class="material-icons">create</i>
                            </a>
                            &nbsp;&nbsp; -->
                            <form action="{{ route('potensi.destroy',$p->id) }}" method="POST">
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
                        <td colspan="6" class="center"><span>Data Potensi masih kosong.</span></td>
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
