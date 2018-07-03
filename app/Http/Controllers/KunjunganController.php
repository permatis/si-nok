<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Potensi;

class KunjunganController extends Controller
{
    protected $potensi;

    public function __construct(Potensi $potensi)
    {
        $this->potensi = $potensi;
    }

    public function masyarakat()
    {
        $potensi = $this->potensi->whereIn('id', [15, 43, 18, 21, 16])
                        ->with(['kategori', 'gambar'])
                        ->orderByRaw(\DB::raw("FIELD(id, 15, 43, 18, 21, 16)"))
                        ->get();

        return view('rute.masyarakat', compact('potensi'));
    }

    public function wilayah()
    {
        $potensi = $this->potensi->whereIn('id', [15, 38, 29, 27, 28])
                        ->with(['kategori', 'gambar'])
                        ->orderByRaw(\DB::raw("FIELD(id, 15, 38, 29, 27, 28)"))
                        ->get();

        return view('rute.wilayah', compact('potensi'));
    }

    public function pkk1()
    {
        $potensi = $this->potensi->whereIn('id', [15, 42, 41])
                        ->with(['kategori', 'gambar'])
                        ->orderByRaw(\DB::raw("FIELD(id, 42, 41)"))
                        ->get();

        return view('rute.pkk1', compact('potensi'));
    }

    public function pkk2()
    {
        $potensi = $this->potensi->whereIn('id', [15, 39, 40, 34, 35])
                        ->with(['kategori', 'gambar'])
                        ->orderByRaw(\DB::raw("FIELD(id, 15, 39, 40, 34, 35)"))
                        ->get();

        return view('rute.pkk2', compact('potensi'));
    }
}
