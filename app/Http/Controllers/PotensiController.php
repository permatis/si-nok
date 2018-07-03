<?php

namespace App\Http\Controllers;

use App\Potensi;
use App\Gambar;
use App\Kategori;
use Illuminate\Http\Request;
use Intervention\Image\ImageManagerStatic;
use Carbon\Carbon;

class PotensiController extends Controller
{
    protected $potensi;
    protected $image;
    protected $dest;
    protected $gb;
    protected $kategori;

    public function __construct(
        Potensi $potensi,
        ImageManagerStatic $image,
        Gambar $gb,
        Kategori $kategori
    )
    {
        $this->potensi = $potensi;
        $this->kategori = $kategori;
        $this->gb = $gb;
        $this->image = $image;
        $this->dest = public_path('images/upload');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $potensi = $this->potensi->all();

        return view('potensi.index', compact('potensi'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $kategori = $this->kategori->all();

        return view('potensi.create', compact('kategori'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //save potensi untuk mendapatkan potensi id
        $potensi = $this->potensi->create(
            array_except($request->all(), ['kategori', 'gambar'])
        );

        // save relasi potensi dengan kategori_id
        $potensi->kategori()->sync($request->kategori);

        if($request->hasFile('gambar')) {
            $image = $request->file('gambar');

            if (!file_exists($this->dest)) {
                mkdir($this->dest, 666, true);
            }

            foreach($image as $img) {
                $time = Carbon::now();
                $filename = str_random(5).date_format($time,'d').rand(1,9).date_format($time,'h').".jpg";
                $namafile = pathinfo($img->getClientOriginalName(), PATHINFO_FILENAME);
                $images = $this->image->make($img)->save($this->dest.'/'.$filename);

                //simpan gambar ke database;
                $gambar = $this->gb->create([
                    'nama' => $namafile,
                    'files' => $filename
                ]);

                //simpan ke tabel relasi
                $gambar->potensi()->attach($potensi->id);
            }
        }

        return redirect('ketik/potensi');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Potensi  $potensi
     * @return \Illuminate\Http\Response
     */
    public function show(Potensi $potensi)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Potensi  $potensi
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Potensi  $potensi
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Potensi  $potensi
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $potensi = $this->potensi->find($id);

        foreach ($potensi->gambar as $value) {
            unlink($this->dest.'/'.$value->files);
            $value->delete();
        }

        $potensi->gambar()->wherePivot('potensi_id', '=', $potensi->id)->detach();
        $potensi->kategori()->wherePivot('potensi_id', '=', $potensi->id)->detach();
        $potensi->delete();

        return redirect('ketik/potensi');
    }
}
