<#import "parts/common.ftl" as common>
<#import "parts/login.ftl" as login>
<#include "parts/security.ftl">

<@common.page>

<div class="form-row">
    <div>
        <form method="get" action="/main" class="form-inline">
            <input type="text" name="filter" class="form-control" value="${filter!}"
                   placeholder="Search by tag">
            <button type="submit" class="btn btn-primary ml-3">Search</button>
        </form>
    </div>
</div><br>


    <#if isAdmin>
        <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
           aria-controls="collapseExample">
            Add new message
        </a>
    </#if>

    <#if isTeacher>
        <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
           aria-controls="collapseExample">
            Add new message
        </a>
    </#if>


<div class="collapse" id="collapseExample">
    <div class="form-group">
        <form method="post" enctype="multipart/form-data">
            <input type="text" name="title" class="form-control mt-2" placeholder="Input title">
            <input type="text" name="text" class="form-control mt-2" placeholder="Input message">
            <input type="text" name="tag" class="form-control mt-2" placeholder="Input tag"">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type=submit class="btn btn-primary mt-2">Add</button>
        </form>
    </div>
</div>


    <#list messages as message>
        <div class="card mt-3">
            <div class="card-body">
                <#if message.title??><h5 class="card-title">${message.title}</h5>
                <#else>
                    <h5 class="card-title">none</none></h5>
                </#if>
                    <h6 class="card-subtitle mb-2 text-muted">${message.tag}</h6>
                    <p class="card-text">${message.text}</p>
                    <a href="#" class="card-link">${message.authorName}</a>
            </div>
        </div>
    <#else>
            No messages
    </#list>

</@common.page>
