<#import "parts/page.ftl" as p>

<@p.pagemain>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
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
        </div>
    </div>
</@p.pagemain>