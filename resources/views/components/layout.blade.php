<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{$title ?? "WorldSkills - Module B"}}</title>
</head>
<body>
    @auth
        <ul>
            <li><a href="{{ route('manageProducts') }}">Manage Products</a></li>
            <li><a href="{{ route('manageCompanies') }}">Manage Companies</a></li>
            <li><a href="/dashboard">Dashboard</a></li>

            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <input type="submit" value="logout">
            </form>
        </ul>
    @endauth
    @guest
        <ul>
            <li><a href="{{ route('manageProducts') }}">Manage Products</a></li>
            <li><a href="{{ route('manageCompanies') }}">Manage Companies</a></li>
            <li><a href="/">Home</a></li>
        </ul>
    @endguest


    <main>
        {{ $slot }}
    </main>

</body>
</html>