<#import "parts/page.ftl" as p>

<@p.pagemain>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h4>Войдите, используя свои данные</h4>
            <form action="/login" method="post">
                <div class="form-group">
                    <label for="inputEmail1">Логин</label>
                    <input name="username" type="text" class="form-control" id="inputEmail1" placeholder="Логин">
                </div>
                <div class="form-group">
                    <label for="inputPassword1">Пароль</label>
                    <input name="password" type="password" class="form-control" id="inputPassword1" placeholder="Пароль">
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button type="submit" class="btn btn-primary">Войти</button>
            </form>
        </div>
    </div>
</div>
</@p.pagemain>