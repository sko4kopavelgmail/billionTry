<#import "parts/common.ftl" as common>


<@common.page>
<form action="/user" method="post">

    <!-- First and last name -->
    <div class="form-group" >
        <label for="firstName">First name</label>
        <input name="firstName" type="text" class="form-control" id="firstName" aria-describedby="change this field if you want to"
               value="${user.firstName}">
    </div>

    <div class="form-group" >
        <label for="LastName">Last name</label>
        <input name="lastName" type="text" class="form-control" id="LastName" aria-describedby="change this field if you want to"
               value="${user.lastName}">
    </div>

    <!-- Sex -->
    <div class="form-group">
        <div class="form-check">
            <input class="form-check-input" type="radio" name="sex" id="radio1" value="Male" <#if user.sex>
                       checked</#if>>
            <label class="form-check-label" for="radio1">
                Male
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="sex" id="radio2" value="Female"
                       <#if !user.sex>checked</#if>>
            <label class="form-check-label" for="radio2">
                Female
            </label>
        </div>
    </div>

    <!-- username -->
    <div class="form-group" >
        <label for="Username">User name</label>
        <input type="text" class="form-control" name="username" id="Username" aria-describedby="change this field if you want to"
               value="${user.username}">
    </div>

    <!-- Email -->
    <div class="form-group" >
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
               placeholder="Enter email" <value="${user.email!}">
    </div>

    <!-- password -->
    <div class="form-group">
        <label for="pass">Password</label>
        <input type="text" name="password" class="form-control" id="pass" placeholder="Password" value="${user.password}">
    </div>

    <!-- Roles -->
    <div class="form-group form-check">
        <#list roles as role>
            <label class="form-check-label">
                <input type="checkbox" class="form-check-input" name="${role}" ${user.roles?seq_contains(role)?string("checked","")}>
                ${role}
            </label>
            <br/>
        </#list>
    </div>

    <input type="hidden" name="userId" value="${user.id}">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</@common.page>