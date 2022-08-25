@extends('layouts.base')

@section('title', 'Избранные новости')

@section('main')
    <h2>Добро пожаловать, {{ Auth::user()->name }}</h2>
@if (count($news) > 0)
    @foreach($news as $newsItem)
        <div class="news-item">
            <h2>{{ $newsItem->getAttributes()['news_title'] }}</h2>
            <img src="{{ $newsItem->getAttributes()['news_img'] }}" alt="">
            <p>{{ $newsItem->getAttributes()['news_descr'] }}</p>
            <a href="{{ route('detail', ['news' => $newsItem->getAttributes()['news_id']]) }}">Читать далее</a>
        </div>
    @endforeach
@endif
@endsection
