@extends('layouts.base')

@section('title', 'Главная')

@section('main')
    <form action="{{ route('search') }}" method="GET">
        <input type="text" name="searchData">
        <input type="submit">
    </form>
    <form action="">
{{--        <select name="" id="">--}}
{{--            {{ dd($cities) }}--}}
{{--            @if (count($cities) > 0)--}}
{{--                @foreach($cities as $city)--}}
{{--                    <option value="{{ $city->name }}"></option>--}}
{{--                @endforeach--}}
{{--            @endif--}}
{{--        </select>--}}
    </form>
    @if (count($news) > 0)
        @foreach($news as $newsItem)
            <div class="news-item">
                <h2>{{ $newsItem->title }}</h2>
                <img src="{{ $newsItem->image }}" alt="">
                <p>{{ $newsItem->description }}</p>
                <a href="{{ route('detail', ['news' => $newsItem->id]) }}">Читать далее</a>
{{--                <button class="btn btn-link">--}}
{{--                    <a href="{{ route('news.addFavourite', ['news' => $newsItem->id]) }}">Добавить в избранное</a>--}}
{{--                </button>--}}
            </div>
        @endforeach
        @else
        <p>Ничего не найдено</p>
    @endif
@endsection


