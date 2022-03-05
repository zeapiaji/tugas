<?php

namespace App\Http\Controllers;

use App\Models\Pegawai;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PegawaiController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function home()
    {
        $pegawai = Pegawai::all();

        $no = 1;

        return view('home', compact('pegawai','no'));
    }

    public function add()
    {

        return view('add');
    }

    public function store(Request $request)
    {
        $this -> validate($request,[
            'nama' => 'required',
            'alamat' => 'required',
            'umur' => 'required',
            'no_hp' => 'required'
        ]);

        Pegawai::create([
            'nama'   => $request -> nama,
            'alamat' => $request -> alamat,
            'umur'   => $request -> umur,
            'no_hp'  => $request -> no_hp
        ]);

        return redirect('/dashboard');
    }

    public function edit($id)
    {
        $pegawai = Pegawai::find($id);
        return view('edit', ['pegawai' => $pegawai]);
    }

    public function delete($id)
    {
        $pegawai = Pegawai::find($id);
        $pegawai -> delete();

        return redirect('/dashboard');
    }

    public function update($id, Request $request)
    {
        $this -> validate($request,[
            'nama'   => 'required',
            'alamat' => 'required',
            'umur'   => 'required',
            'no_hp'  => 'required'
        ]);

        $pegawai = Pegawai::find($id);
            $pegawai -> nama   = $request -> nama;
            $pegawai -> alamat = $request -> alamat;
            $pegawai -> umur   = $request -> umur;
            $pegawai -> no_hp  = $request -> no_hp;
            $pegawai -> save();
        return redirect('/dashboard');
    }
}
