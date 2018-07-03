<?php


Route::get('/', function () {
    // $kategori = \App\Kategori::all();
    $potensi = \App\Potensi::with(['kategori', 'gambar'])->get();
	// $potensi = \App\Potensi::whereIn('id', [15, 43, 18, 21, 16])
 //                        ->with(['kategori', 'gambar'])
 //                        ->orderByRaw(\DB::raw("FIELD(id, 15, 43, 18, 21, 16)"))
 //                        ->get();
 // return $potensi;
    return view('home', compact('potensi'));
});

Route::group(['prefix' => 'rute'], function() {
    Route::get('masyarakat', 'KunjunganController@masyarakat');
    Route::get('wilayah', 'KunjunganController@wilayah');
    Route::get('pkk1', 'KunjunganController@pkk1');
    Route::get('pkk2', 'KunjunganController@pkk2');
});

Route::resource('/ketik/potensi', 'PotensiController');
Route::resource('/ketik/kategori', 'KategoriController');
