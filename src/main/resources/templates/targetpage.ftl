<#import "parts/page.ftl" as p>

<@p.pagemain>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header
                        <#if target.state=='ACTIVE'> alert-primary
                        <#elseif target.state=='COMPLETE_PAYED'> alert-success
                        <#elseif target.state=='COMPLETE_REJECTED'> alert-warning
                        <#else> alert-danger
                        </#if>">
                        <#if target.state=='ACTIVE'>Активна
                        <#elseif target.state=='COMPLETE_PAYED'>Завершено с пожертвованием
                        <#elseif target.state=='COMPLETE_REJECTED'>Завершено с возвратом
                        <#else>Провалено
                        </#if>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">${target.name}</h5>
                        <p class="card-text">${target.description}</p>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#confirmTarget">
                            Подтвердить выполнение
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="confirmTarget" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Поздравляем!</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Вы молодец! Теперь можете забрать свои деньги, либо пожертвовать их.
                </div>
                <div class="modal-footer">
                    <a href="/target/donate/${target.id}/take" style="background: red" class="btn btn-danger">Забрать</a>
                    <a href="/target/donate/${target.id}/donate" style="background: green" class="btn btn-success">Пожертвовать</a>
                </div>
            </div>
        </div>
    </div>
</@p.pagemain>