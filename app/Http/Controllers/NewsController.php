<?php

namespace App\Http\Controllers;

use App\Models\City;
use App\Models\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index() {
        $context = ['news' => News::latest()->get()];
        return view('index', $context);
    }

    public function detail(News $news) {
        $title = $news->getAttributes()['title'];
        $charArr = explode(' ', $title);

        $newsSearchArr = [];
        for ($i = 0; $i < count($charArr); $i++) {
            if (strlen($charArr[$i]) <= 2) {
                continue;
            }
            $newsSearch = News::where('title', 'LIKE', "%{$charArr[$i]}%")->get();
//            $newsSearch->each(function ($value, $index) {
//                if ($value->getAttributes('title') === $title) {
//                    $newsSearch->pull($index);
//                }
//            });
//            foreach ($newsSearch as $newsSearchItem) {
//                if ($newsSearchItem->getAttributes('title') == $title) {
//                    $newsSearch->shift();
//                }
//            }
//            array_push($newsSearchArr, $newsSearch);
        }

        return view('detail', ['newsItem' => $news, 'newsSearchArr' => $newsSearchArr]);
    }

    public function addFavourite(Request $request) {
        $s = $request->searchData;
    }


    public function search(Request $request) {
        $s = $request->searchData;
        $news = News::where('title', 'LIKE', "%{$s}%")->get();
        return view('index', compact('news'));
    }

    public function addCities() {
        $cities = City::all(['name']);
        return view('index', ['cities' => $cities]);
    }


}
