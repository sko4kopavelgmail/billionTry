<#include "security.ftl">
<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <#if known> <input class="btn btn-primary" type="submit" value="Sign Out"/>
    <#else> <input class="btn btn-primary" type="submit" value="Sign In"/>
    </#if>
</form>
</#macro>