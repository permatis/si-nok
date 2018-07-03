<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Kategori;
use Intervention\Image\ImageManagerStatic;
use Carbon\Carbon;

class KategoriController extends Controller
{
    protected $kategori;
    protected $image;
    protected $filename;
    protected $dest;

    public function __construct(Kategori $kategori, ImageManagerStatic $image)
    {
        $this->kategori = $kategori;
        $this->image = $image;
        $time = Carbon::now();
        $this->filename = str_random(5).date_format($time,'d').rand(1,9).date_format($time,'h').".png";
        $this->dest = public_path('images/icons');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $kategori = $this->kategori->all();

        return view('kategori.index', compact('kategori'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('kategori.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if($request->hasFile('gambar')) {
            $image = $request->file('gambar');

            if (!file_exists($this->dest)) {
                mkdir($this->dest, 666, true);
            }

            $image = $this->image->make($image)->save($this->dest.'/'.$this->filename);
            $this->kategori->gambar_icon = $this->filename;
        }

        $this->kategori->nama = $request->nama;
        $this->kategori->deskripsi = $request->deskripsi;
        $kategori = $this->kategori->save();

        return redirect('ketik/kategori');
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $kategori = $this->kategori->find($id);

        return view('kategori.edit', compact('kategori'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // dd($request->all());
        $kategori = $this->kategori->find($id);

        // jika gambar diganti
        if($request->hasFile('gambar')) {
            // delete file sebelumnya
            unlink($this->dest.'/'.$kategori->gambar_icon);
            $image = $request->file('gambar');
            $image = $this->image->make($image)->save($this->dest.'/'.$this->filename);
            $kategori->gambar_icon = $this->filename;
        }

        $kategori->nama = $request->nama;
        $kategori->deskripsi = $request->deskripsi;
        $kategori->save();

        return redirect('ketik/kategori');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $kategori = $this->kategori->find($id);
        if($kategori->gambar_icon) {
            unlink($this->dest.'/'.$kategori->gambar_icon);
        }
        $kategori->potensi()->wherePivot('kategori_id', '=', $id)->detach();
        $kategori->delete();

        return redirect('ketik/kategori');
    }
}
