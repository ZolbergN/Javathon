<#import "parts/page.ftl" as p>

<@p.page>
    <div class="cover-container d-flex col-md-12  h-100 p-3 mx-auto flex-column">
    <header class="masthead mb-auto">
        <div class="inner">
            <h3 class="masthead-brand">Donation Motivation</h3>
            <nav class="nav nav-masthead justify-content-center">
                <a class="nav-link" href="/register">Регистация</a>
                <a class="nav-link" href="/login">Войти</a>
            </nav>
        </div>
    </header>

    <div class="container">
        <main role="main" class="inner cover">
            <h1 class="cover-heading">Donation Motivation</h1>
            <p class="lead">Зарегистрируйтесь прямо сейчас и начните развиваться, помогая другим!</p>
            <p class="lead">
                <a href="/register" class="btn btn-lg btn-secondary">Зарегистрироваться сейчас!</a>
            </p>
        </main>
    </div>

    <footer class="mastfoot mt-auto">
        <div class="inner">
            <p>Все права защищены &copy;</p>
        </div>
    </footer>
</@p.page>
