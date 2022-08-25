@extends('layouts.base')

@section('title', $newsItem->title)

@section('main')

    <h2>{{ $newsItem->title }}</h2>
    <img src="{{ $newsItem->image }}" alt="">
    <p>{{ $newsItem->content }}"</p>
    <a href="{{ route('home') }}">На главную</a>
    <h2>Похожие новости</h2>
{{--    {{ dd($newsSearchArr) }}--}}
    @if (count($newsSearchArr) > 0)
        @foreach($newsSearchArr as $newsSearchItem)
{{--            {{ dd($newsSearchItem) }}--}}
            <div class="news-item">
                <h2>{{ $newsSearchItem->getAttributes()['title'] }}</h2>
                <img src="{{ $newsSearchItem->getAttributes()['image'] }}" alt="">
                <p>{{ $newsSearchItem->getAttributes()['description'] }}</p>
                <a href="{{ route('detail', ['news' => $newsSearchItem->getAttributes()['id']]) }}">Читать далее</a>
            </div>
        @endforeach
    @endif
@endsection
