@extends('layouts.app')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">{{ __('Dashboard') }}</div>
            <div class="card-body">
                <a href="/dashboard/add/" class="btn btn-success">Tambah Pegawai</a>
                <table class="table">
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Alamat</th>
                        <th>Umur</th>
                        <th>Telpon</th>
                        <th></th>
                        <th></th>
                    </tr>
                    @foreach ($pegawai as $data)
                    <tr>
                        <td>{{$data -> id}}</td>
                        <td>{{$data -> nama}}</td>
                        <td>{{$data -> alamat}}</td>
                        <td>{{$data -> umur}}</td>
                        <td>{{$data -> no_hp}}</td>
                        <td><a href="/dashboard/edit/{{$data->id}}" class="btn btn-primary">Edit</a></td>
                        <td><a href="/dashboard/delete/{{$data->id}}" class="btn btn-danger">Hapus</a></td>
                    </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>
</div>
@endsection
