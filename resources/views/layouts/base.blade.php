<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <title>@yield('title') :: Объявления</title>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-light bg-light">
        @auth
            <a href="{{ route('home') }}">Главная</a>
        @endauth
            <a href="{{ route('index') }}">Все новости</a>
        @guest
        <a href="{{ route('register') }}">Регистрация</a>
        <a href="{{ route('login') }}">Вход</a>
        @endguest
        @auth
        <form action="{{ route('logout') }}" method="POST" class="form-inline">
            @csrf
            <input type="submit" class="btn btn-danger" value="Выход">
        </form>
            @endauth
    </nav>
    <h1 class="my-3 text-center">Новости</h1>
    @yield('main')
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>
