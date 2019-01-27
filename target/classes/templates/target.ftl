<#import "parts/page.ftl" as p>

<@p.pagemain>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <#list targets as target>
                    <a class="card" href="/target/show/${target.id}">
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
                        </div>
                    </a>
                </#list>
            </div>
        </div>
    </div>
</@p.pagemain>