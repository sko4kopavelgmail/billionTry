<#include "security.ftl">
<#import "login.ftl" as logout>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">Billion Try</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <#if known && (isTeache?ifExists || isAdmin?ifExists)>
            <li class="nav-item dropdown">
                <a  class="nav-link dropdown-toggle"
                        href="/test" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Test
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item text-center" href="/test">Test</a>
                    <a class="dropdown-item text-center" href="/test/addTest">Create test</a>
                    <a class="dropdown-item text-center" href="/test/editTest">Edit test</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item text-center" href="/test/testStudents">Tormenting students</a>
                </div>
            </li>
            <#else>
            <li class="nav-item">
                <a class="nav-link" href="/test">Test</a>
            </li>
            </#if>

            <li class="nav-item">
                <a class="nav-link" href="/main">Messages</a>
            </li>
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/user">User List</a>
            </li>
            </#if>
        </ul>
        <div class="navbar-text mr-3"><a href="/user/profile">${name}</a></div>
        <@logout.logout/>
    </div>
</nav>