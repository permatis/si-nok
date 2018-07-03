<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Gambar extends Model
{
    protected $table = 'gambar';
    protected $fillable = [ 'nama', 'files' ];

    public function potensi()
    {
        return $this->belongsToMany('\App\Potensi');
    }
}
