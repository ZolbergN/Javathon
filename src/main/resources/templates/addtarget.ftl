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
                    <label>Дата завершения</label>
                    <input name="endDate" type="text"
                           id="datepicker"
                           data-multiple-dates="3"
                           data-multiple-dates-separator="-"
                           data-position='right top'/>
                </div>
                <div class="form-group">
                    <label for="targetCost">Выберите организацию</label>
                    <#list org as o>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="orgId" value="${o.id}">
                        <label class="form-check-label">
                            ${o.name}
                        </label>
                    </div>
                    </#list>
                </div>
                <div class="form-group">
                    <label for="targetCost">Сумма</label>
                    <input name="cost" type="text" class="form-control" id="targetCost" placeholder="Сумма">
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">

                <div class="row">

                    <div class="col-md-6 mb-3">
                        <label for="cc-number">Кредитная/дебетовая карта</label>

                        <div class="input-group">
                            <div class="input-group-prepend">

                            </div>
                            <input name="cardnumber" type="text" class="form-control" id="cc-number" placeholder="XXXX-XXXX-XXXX-XXXX" required="">
                        </div>

                    </div>
                </div>

                <div class="row">

                    <div class="col-md-6 mb-3">
                        <label for="cc-number">Фамилия и имя</label>

                        <div class="input-group">
                            <div class="input-group-prepend">
                            </div>
                            <input name="cardname" type="text" class="form-control" id="cc-number" placeholder="Фамилия и имя" required="">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2 mb-3">
                        <label for="cc-expiration"></label>

                        <div class="input-group">
                            <div class="input-group-prepend">
                            </div>
                            <input name="mount" type="text" class="form-control" id="cc-expiration" placeholder="Месяц" required="">
                        </div>
                    </div>
                    <div class="col-md-2 mb-3">
                        <label for="cc-cvv"></label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                            </div>
                            <input name="year" type="text" class="form-control" id="cc-cvv" placeholder="Год" required="">
                        </div>
                    </div>
                    <div class="col-md-2 mb-3">
                        <label for="cc-years"></label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                            </div>
                            <input name="cvv" type="text" class="form-control" id="cc-expiration" placeholder="CVV" required="">
                        </div>
                    </div>
                </div>

                <hr class="mb-4">
                <button class="btn btn-primary btn-lg btn-block" type="submit">Оплатить</button>

            </form>
        </div>
    </div>
</div>

<link href="/css/datepicker.min.css" rel="stylesheet" type="text/css">
<script src="/js/datepicker.min.js"></script>

<script type="text/javascript">
    $('#datepicker').datepicker({
        minDate: new Date()
    })
</script>

</@p.pagemain>