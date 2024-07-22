<?php

namespace App\Controllers;

class Home extends BaseController
{
    public $arr = ['judul'=>null];
    public function index(): string
    {
        return view('utama');
    }
    public function daftar_sampel(): string
    {
        $this->arr['judul']="DAFTAR SAMPEL";
        return view('utama', $this->arr);
    }
}
