<#import "parts/common.ftl" as common>

<@common.page>
    <br/>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">User name</th>
            <th scope="col">Roles</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <#assign count = 1>
        <#list users as user>
            <tr>
                <th scope="row">${count}</th>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}">Edit</a></td>
            </tr>
        <#assign count ++>
        </#list>
    </table>
</@common.page>