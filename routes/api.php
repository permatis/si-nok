<?php

use Illuminate\Http\Request;

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('potensi', function(Request $request){
    $potensi = \App\Potensi::with(['kategori', 'gambar'])->whereHas('kategori', function($q) use($request) {
        $q->where('kategori_id', $request->kategori);
    })->get();

    return $potensi;
});
