<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link rel="stylesheet" href="/css/bootstrap.min.css" crossorigin="anonymous">
</head>
<body>
    This is login page!!!

    <form action="/login" method="post">
        <div class="form-group">
            <label for="inputEmail1">Логин</label>
            <input name="login" type="text" class="form-control" id="inputEmail1" placeholder="Логин">
        </div>
        <div class="form-group">
            <label for="inputPassword1">Пароль</label>
            <input name="password" type="password" class="form-control" id="inputPassword1" placeholder="Пароль">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary">Войти</button>
    </form>

    <script src="js/jquery.js" crossorigin="anonymous"></script>
    <script src="js/popper.js" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js" crossorigin="anonymous"></script>
</body>
</html>