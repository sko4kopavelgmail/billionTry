<#import "parts/common.ftl" as common>
<#import "parts/login.ftl" as login>

<@common.page>
    <div>
        <@login.logout />
    </div>

<div>
    <form method="post">
        <input type="text" name="text" placeholder="Input message">
        <input type="text" name="tag" placeholder="Input tag"">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type=submit>Add</button>
    </form>

</div><br>
<div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter}">
        <button type="submit">Find</button>
    </form>
</div>
<div>Messages list:</div>

<#list messages as message>
    <div>
        <span>${message.id}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
    </div>
<#else>
No messages
</#list>

</@common.page>
