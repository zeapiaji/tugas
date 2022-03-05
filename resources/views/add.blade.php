@extends('layouts.app')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">{{ __('Dashboard') }}</div>
            <div class="card-body">
                <a href="/dashboard" class="btn btn-success">Kembali</a>

                <form class="needs-validation" action="/dashboard/add/store/" method="POST" novalidate>
                    @csrf
                    {{ csrf_field('PUT') }}
                    <div class="mb-4 mt-4">
                        <label for="validationCustom01" class="form-label">Nama</label>
                        <input type="text" class="form-control" id="validationCustom01" name="nama" required>
                        <div class="valid-feedback">
                            Masukan Nama!
                        </div>
                    </div>
                    <div class="mb-4">
                        <label for="validationCustom01" class="form-label">Umur</label>
                        <input type="number" class="form-control" id="validationCustom01" name="umur" required>
                        <div class="valid-feedback">
                            Masukan Umur!
                        </div>
                    </div>
                    <div class="mb-4">
                        <label for="validationCustom01" class="form-label">Telepon</label>
                        <input type="number" class="form-control" id="validationCustom01" name="no_hp" required>
                        <div class="valid-feedback">
                            Masukan Telepon!
                        </div>
                    </div>
                    <div class="mb-4">
                        <label for="validationCustom01" class="form-label">Alamat</label>
                        <input type="text" class="form-control" id="validationCustom01" name="alamat" required>
                        <div class="valid-feedback">
                            Masukan Alamat!
                        </div>
                    </div>

                    <div class="col-12">
                      <button class="btn btn-primary" type="submit">Submit form</button>
                    </div>
                  </form>

            </div>
        </div>
    </div>
</div>
@endsection
