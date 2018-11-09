<#import "parts/common.ftl" as common>

<@common.page>
<form method="post" action="/test/addTest">
    <div class="card text-center">
        <div class="card-body">
            <h5 class="card-title">Creation test</h5>
            <p class="text-left my-2">The first step is input test name.</p>
            <input type="text" class="form-control" id="testName" name="name" placeholder="enter test name">
            <p class="text-left mt-4">The next one is choosing questions</p>
            <div data-spy="scroll" data-target="#navbar-example2" data-offset="0">

                <#list questions as question>
                    <div class="card mt-3">
                        <label class="form-check-label">
                            <input type="checkbox" class="form-check-input" name="${question.id}">
                            <div class="card-body">
                                <p class="card-text">${question.question}</p>
                                <a href="#" class="card-link"><#list question.languages as lang>${lang}<#sep>
                                    , </#list></a>
                            </div>
                        </label>
                    </div>
                </#list>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-primary mt-2">Submit</button>

        </div>
    </div>

</form>

</@common.page>