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
    <form action="/target/add" method="post">
        <div class="form-group">
            <label for="targetName">Заголовок</label>
            <input name="name" type="text" class="form-control" id="targetName" placeholder="Заголовок">
        </div>
        <div class="form-group">
            <label for="targetDescription">Описание</label>
            <textarea name="description" class="form-control" id="targetDescription" placeholder="Описание"></textarea>
        </div>
        <div class="form-group">
            <label for="targetCost"></label>
            <input name="cost" type="text" class="form-control" id="targetCost" placeholder="Стоимость цели">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary">Создать</button>
    </form>

    <script src="js/jquery.js" crossorigin="anonymous"></script>
    <script src="js/popper.js" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js" crossorigin="anonymous"></script>
</body>
</html>