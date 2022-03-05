@extends('layouts.auth')

@section('content')
    <body class="antialiased">
        <div class="relative flex items-top justify-center min-h-screen bg-gray-100 dark:bg-gray-900 sm:items-center py-4 sm:pt-0">
            <div class="container col-xl-10 col-xxl-8 px-4">
                <div class="row align-items-center g-lg-5 py-5">
                  <div class="col-lg-7 text-center text-lg-start">
                    <h1 class="display-4 fw-bold lh-1 mb-3">Portofolio Zea Piaji</h1>
                    <p class="col-lg-10 fs-4">Selamat datang di web Portofolio Zea Piaji. Web ini ditujukan untuk memenuhi salah satu tugas Bapak Rully Mata Pelajaran Perangkat Web dan Perangkat Bergerak.</p>
                  </div>
                  <div class="col-md-10 mx-auto col-lg-5">

                    <form method="POST" action="{{ route('login') }}" class="p-4 p-md-5 border rounded-3 bg-light">
                    @csrf
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" id="floatingInput" placeholder="..." value="{{ old('email') }}" required autocomplete="email" autofocus>
                            <label for="floatingInput">Email</label>
                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="form-floating mb-3">
                            <input type="password" class="form-control @error('password') is-invalid @enderror" name="password" id="floatingPassword" placeholder="Password" required autocomplete="current-password">
                            <label for="floatingPassword">Kata Sandi</label>
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="checkbox mb-3">
                            <label>
                            <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                <label class="form-check-label" for="remember">
                                    {{ __('Ingat Saya') }}
                                </label>
                            </label>
                        </div>
                        <button class="w-100 btn btn-lg btn-primary" type="submit"> {{ _('Masuk')}} </button>
                        <hr class="my-4">
                                @if (Route::has('register'))
                                    <a class="col-6 text-end" href="{{ route('register') }}"> {{ __('Daftar') }} </a>
                                @endif
                    </form>

                  </div>
                </div>
            </div>
        </div>
    </body>
</html>
@endsection
