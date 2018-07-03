<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Potensi extends Model
{
    protected $table = 'potensi';
    protected $fillable = [
        'nama', 'pemilik', 'alamat', 'keterangan', 'lat', 'long'
    ];

    public function kategori()
    {
        return $this->belongstoMany('\App\Kategori');
    }

    public function gambar()
    {
        return $this->belongsToMany('\App\Gambar');
    }
}
