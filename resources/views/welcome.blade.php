<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin - Login</title>
</head>
<body>

    <form method="POST" action="{{ route('authenticate') }}">
        @csrf
        <input type="password" name="password" id="password">
        <input type="submit" value="login">
    </form>

    @error('password')
     <p style="color:red;">
        {{ $message }}
    </p>
    @enderror
</body>
</html>