<#import "parts/common.ftl" as common>

<@common.page>
    List of users:
    <br/>
    <table>
        <thead>
        <th>Name  </th>
        <th>Role</th>
        <th></th>
        </thead>



    <#list users as user>
    <tbody>
    <tr>
        <td>${user.username}</td>
        <td><#list user.roles as role>${role}<#sep>, </#list></td>
        <td><a href="/user/${user.id}">Edit</a></td>
    </tr>
    </tbody>
    </#list>

    </table>
</@common.page>