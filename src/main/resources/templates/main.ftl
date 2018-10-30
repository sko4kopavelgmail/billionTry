<#import "parts/common.ftl" as common>
<#import "parts/login.ftl" as login>

<@common.page>
    <div>
        <@login.logout />
    </div>
    <div>
        <a href="/user">Users</a>
    </div>

<div>
    <form method="post" enctype="multipart/form-data">
        <input type="text" name="text" placeholder="Input message">
        <input type="text" name="tag" placeholder="Input tag"">
        <input type="file" name="file">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type=submit>Add</button>
    </form>

</div><br>

<div>Messages list:</div>

<div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter?ifExists}">
        <button type="submit">Find</button>
    </form>
</div>

    <#list messages as message>
    <div>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
        <div>
            <#if message.filename??>
                <img src="/img/${message.filename}">
            </#if>
        </div>
    </div>
    <#else>
No messages
    </#list>

</@common.page>
