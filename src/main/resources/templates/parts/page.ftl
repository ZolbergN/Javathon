<#macro page>

<!doctype html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Добро пожаловать на Donation Motivation</title>

    <link rel="stylesheet" href="/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/style.css" crossorigin="anonymous">
</head>

<body class="text-center">
    <#nested >
</div>


<script src="/js/jquery.js" crossorigin="anonymous"></script>
<script src="/js/popper.js" crossorigin="anonymous"></script>
<script src="/js/bootstrap.min.js" crossorigin="anonymous"></script>


<div id="sad654sd7ef12eafw8e97fwe123fweq67fwe31as"></div></body></html>

</#macro>

<#macro pagemain>
    <html lang="en" class="h-100"><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Donation Motivation</title>

        <link rel="stylesheet" href="/css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" href="/css/mainstyles.css" crossorigin="anonymous">
    </head>
    <body class="d-flex flex-column h-100">
    <header>
        <!-- Fixed navbar -->
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            <a class="navbar-brand" href="#">Donation Motivation</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/target/all">Мои цели</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/target/add">Создать цель</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/logout">Выйти</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <main role="main" class="flex-shrink-0">
        <div class="container">
            <#nested>
        </div>
    </main>

    <footer class="footer mt-auto py-3">
        <div class="container">
            <span class="text-muted">Все права защищены.</span>
        </div>
    </footer>

    <script src="/js/jquery.js" crossorigin="anonymous"></script>
    <script src="/js/popper.js" crossorigin="anonymous"></script>
    <script src="/js/bootstrap.min.js" crossorigin="anonymous"></script>

    <div id="sad654sd7ef12eafw8e97fwe123fweq67fwe31as"></div></body></html>
</#macro>