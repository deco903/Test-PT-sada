<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Siswa;
use App\Sekolah;

class DatabaseController extends Controller
{
    public function index()
    {
        $siswa = siswa::paginate(10);
        return view ('siswa.index', ['siswa' => $siswa]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function form()
    {
        $sekolah = sekolah::all(); 
        return view ('siswa.form', compact('sekolah'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
       siswa::create([
            'sekolah_id' => request('sekolah_id'),
            'name' => request('name'),
            'alamat' => request('alamat'),
            'nohp' => request('nohp'),
           
        ]);
        return redirect('/database')->with('succes','data berhasil diinput');
    }

}
