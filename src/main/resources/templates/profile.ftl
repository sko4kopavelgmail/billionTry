<#import "parts/common.ftl" as c>

<@c.page>
    <div>
        ${message?ifExists}
    </div>
    <form method="post" class="center-block">

        <!-- First and last name -->
        <div class="form-group" >
            <label for="firstName">First name</label>
            <input name="firstName" type="text" class="form-control" id="firstName" aria-describedby="change this field if you want to"
                   value="${firstName!''}">
        </div>

        <div class="form-group" >
            <label for="LastName">Last name</label>
            <input name="lastName" type="text" class="form-control" id="LastName" aria-describedby="change this field if you want to"
                   value="${lastName!''}">
        </div>

        <!-- Sex -->
        <div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="sex" id="exampleRadios1" value="Male" <#if sex>
                       checked</#if>>
                <label class="form-check-label" for="exampleRadios1">
                    Male
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="sex" id="exampleRadios2" value="Female"
                       <#if !sex>checked</#if>>
                <label class="form-check-label" for="exampleRadios2">
                    Female
                </label>
            </div>
        </div>

        <!-- Password -->
        <div class="form-group mt-3">
            <a class="btn btn-primary" data-toggle="collapse" href="#password" role="button" aria-expanded="false"
               aria-controls="collapseExample">
                Do you wanna change your password?
            </a>
        </div>
        <div class="collapse" id="password">
            <div class="form-group">
                <label for="pass">Password</label>
                <input type="password" name="password" class="form-control mb-3" id="pass" placeholder="Password">
                <input type="password" name="rePassword" class="form-control" id="pass" placeholder="Confirm your password">
            </div>
        </div>

        <!-- Email -->
        <div class="form-group" >
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                   placeholder="Enter email" <value="${email!''}">
        </div>

        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit">Save</button>
    </form>

</@c.page>