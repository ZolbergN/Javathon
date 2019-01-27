<#import "parts/page.ftl" as p>

<@p.pagemain>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
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
        </div>
    </div>
</div>

</@p.pagemain>