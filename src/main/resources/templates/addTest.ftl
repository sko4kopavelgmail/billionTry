<#import "parts/common.ftl" as common>

<@common.page>

            <!-- Тут нужен фильтр сообщений как его создать??-->
<div class="form-row ml-1">
    <div>
        <form method="get" action="/test/addTest" class="form-inline">
            <input type="text" name="filterQuestion" class="form-control" value="${filterQuestion!}"
                   placeholder="Search by question">
            <button type="submit" class="btn btn-primary ml-3">Search</button>
        </form>
    </div>
</div><br>


<form method="post" action="/test/addTest">
    <div class="card text-center">
        <div class="card-body">
            <h5 class="card-title">Creation test</h5>
            <p class="text-left my-2">The first step is input test name.</p>
            <input type="text" class="form-control" id="testName" name="name" placeholder="enter test name">
            <p class="text-left mt-4">The next one is choosing questions</p>
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
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-primary mt-2">Submit</button>
        </div>
    </div>
</form>
</@common.page>