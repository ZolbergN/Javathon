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

                <h4 class="mb-3">Взнос</h4>


                <div class="row">

                    <div class="col-md-6 mb-3">
                        <label for="cc-number">Кредитная/дебетовая карта</label>

                        <div class="input-group">
                            <div class="input-group-prepend">

                            </div>
                            <input type="text" class="form-control" id="cc-number" placeholder="XXXX-XXXX-XXXX-XXXX" required="">
                            <div class="invalid-feedback" style="width: 100%;">
                                Your card is required.
                            </div>
                        </div>


                        <div class="invalid-feedback">
                            Credit card number is required
                        </div>
                    </div>
                </div>

                <div class="row">

                    <div class="col-md-6 mb-3">
                        <label for="cc-number">Фамилия и имя</label>

                        <div class="input-group">
                            <div class="input-group-prepend">

                            </div>
                            <input type="text" class="form-control" id="cc-number" placeholder="Фамилия и имя" required="">
                            <div class="invalid-feedback" style="width: 100%;">
                                Your card is required.
                            </div>
                        </div>


                        <div class="invalid-feedback">
                            Credit card number is required
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 mb-3">
                        <label for="cc-expiration"></label>

                        <div class="input-group">
                            <div class="input-group-prepend">

                            </div>
                            <input type="text" class="form-control" id="cc-expiration" placeholder="Месяц" required="">
                            <div class="invalid-feedback" style="width: 100%;">
                                Your card is required.
                            </div>
                        </div>


                        <div class="invalid-feedback">
                            Expiration date required
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="cc-cvv"></label>

                        <div class="input-group">
                            <div class="input-group-prepend">

                            </div>
                            <input type="text" class="form-control" id="cc-cvv" placeholder="Год" required="">
                            <div class="invalid-feedback" style="width: 100%;">
                                Your card is required.
                            </div>
                        </div>

                        <div class="invalid-feedback">
                            Security code required
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="cc-years"></label>

                        <div class="input-group">
                            <div class="input-group-prepend">

                            </div>
                            <input type="text" class="form-control" id="cc-expiration" placeholder="CVV" required="">
                            <div class="invalid-feedback" style="width: 100%;">
                                Your card is required.
                            </div>
                        </div>


                        <div class="invalid-feedback">
                            Expiration date required
                        </div>
                    </div>
                </div>


                <hr class="mb-4">
                <button class="btn btn-primary btn-lg btn-block" type="submit">Continue to checkout</button>


            </form>
        </div>
    </div>
</div>

</@p.pagemain>