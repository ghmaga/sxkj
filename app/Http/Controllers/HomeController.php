<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
    	return view('home.index');
    }

    public function changeLocale($locale)
    {
        if (in_array($locale, ['en', 'zh'])) {
            session()->put('locale', $locale);
        }
        return redirect()
            ->back()
            ->withInput();
    }

}
