<#import "parts/page.ftl" as p>

<@p.pagemain>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form action="/register" method="post">
                <div class="form-group">
                    <label for="inputEmail1">Логин</label>
                    <input name="username" type="text" class="form-control" id="inputEmail1" placeholder="Логин">
                </div>
                <div class="form-group">
                    <label for="inputPassword1">Пароль</label>
                    <input name="password" type="password" class="form-control" id="inputPassword1" placeholder="Пароль">
                </div>
                <div class="form-group">
                    <label for="inputPassword2">Повторите пароль</label>
                    <input name="passwordAccept" type="password" class="form-control" id="inputPassword2" placeholder="Повторите пароль">
                </div>
                <div class="form-group">
                    <label for="inputEmail1">Email</label>
                    <input name="email" type="email" class="form-control" id="inputEmail1" placeholder="Email">
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button type="submit" class="btn btn-primary">Зарегистрироваться</button>
            </form>
        </div>
    </div>
</div>
</@p.pagemain>