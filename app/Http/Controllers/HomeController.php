<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    private const BB_ERROR_MESSAGES = [
        'required' => 'Заполните это поле'
    ];

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $news = News::select('news.id as news_id', 'news.title as news_title', 'news.description as news_descr', 'news.image as news_img', 'nu.user_id as user_id')
            ->join('news_user as nu',
                function ($join) {
                    $join->on('news.id', '=', 'nu.news_id');
                }
            )->where('nu.user_id', '=', Auth::id())->get();
        return view('home', compact('news'));
    }
}
