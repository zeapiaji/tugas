<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PageController extends Controller
{
    public function add()
    {
        return view('add');
    }

    public function edit()
    {
        return view('edit');
    }
}
