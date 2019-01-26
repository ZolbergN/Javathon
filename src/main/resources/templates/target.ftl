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
    Targets list here

    <a href="add">add new</a>

    <div class="container">
        <#list targets as target>
            <div class="card">
                <div class="card-header">
                    ${target.state}
                </div>
                <div class="card-body">
                    <h5 class="card-title">${target.name}</h5>
                    <p class="card-text">${target.description}</p>
                </div>
            </div>
        </#list>
    </div>

    <script src="/js/jquery.js" crossorigin="anonymous"></script>
    <script src="/js/popper.js" crossorigin="anonymous"></script>
    <script src="/js/bootstrap.min.js" crossorigin="anonymous"></script>
</body>
</html>