<#import "parts/common.ftl" as common>
<#import "parts/login.ftl" as login>

<@common.page>
    Add new user
    ${message}
    <@login.login "/registration" />
</@common.page>
