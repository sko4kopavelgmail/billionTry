<#import "parts/common.ftl" as c>

<@c.page>
    <div>
        ${message?ifExists}
    </div>
    <form method="post" class="center-block">

        <!-- First and last name -->
        <div class="form-group">
            <input type="text" name="firstName" class="form-control mt-2" placeholder="Input your first name"
                   value="${firstName!''}">
            <input type="text" name="lastName" class="form-control mt-2" placeholder="Input your last name"
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
        <div class="form-group">
            <a class="btn btn-primary" data-toggle="collapse" href="#password" role="button" aria-expanded="false"
               aria-controls="collapseExample">
                Do you wanna change your password?
            </a>
        </div>
        <div class="collapse" id="password">
            <div class="form-group">
                <input type="password" name="password" class="form-control mt-2" placeholder="Input password">
                <input type="password" name="text" class="form-control mt-2" placeholder="confirm your password">
            </div>
        </div>

        <!-- Email -->
        <div class="form-group row">
            <label class="col-sm-2 col-formm-label">Email: </label>
            <div class="col-sm-6">
                <input type="email" name="email" class="form-control" placeholder="Email" value="${email!''}">
            </div>
        </div>

        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit">Save</button>
    </form>

</@c.page>