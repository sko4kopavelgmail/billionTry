<#import "parts/common.ftl" as common>

<@common.page>
    <form action="/test/addQuestion" method="post">
        <div class="my-3">
            <script>
                var count = 2;
                function addQuestion() {
                    var newDiv = document.createElement("div");
                    newDiv.innerHTML = "<div class=\"mb-5\">\n" +
                            "                    <div class=\"input-group input-group-lg\">\n" +
                            "                        <div class=\"input-group-prepend\">\n" +
                            "                            <span class=\"input-group-text\">Input question</span>\n" +
                            "                        </div>\n" +
                            "                        <textarea class=\"form-control\" aria-label=\"With textarea\" name=\"question"+count+"\"></textarea>\n" +
                            "                    </div>\n" +
                            "                    <div class=\"mt-3\">\n" +
                            "                   <#list languages as language>\n"+
"                       <div class=\"form-check form-check-inline\">\n" +
"                           <label class=\"form-check-label\">\n" +
"                               <input class=\"form-check-input\" type=\"radio\" name=\"radioGroup"+count+"\" value=\"${language}\">\n" +
"                               ${language}\n" +
"                           </label>\n" +
"                       </div>\n" +
"                   </#list>\n" +
                            "                    </div>\n" +
                            "                </div>";
                    count++;
                    document.getElementById("parentId").appendChild(newDiv);

                }
            </script>
            <input type="button" class="btn btn-primary" onclick="addQuestion()" value="add Question form">
        </div>
        <div class="card text-center">
            <div class="card-body">
                <h5 class="card-title mb-4">Creation questions</h5>
                <div class="mb-5">
                    <div class="input-group input-group-lg">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Input question</span>
                        </div>
                        <textarea class="form-control" aria-label="With textarea" name="question1"></textarea>
                    </div>
                    <div class="mt-3">
                   <#list languages as language>
                       <div class="form-check form-check-inline">
                           <label class="form-check-label">
                               <input class="form-check-input" type="radio" name="radioGroup1" value="${language}">
                               ${language}
                           </label>
                       </div>
                   </#list>
                    </div>
                </div>
                <div id="parentId"></div>

                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="submit" class="btn btn-primary" value="Create questions">

            </div>
        </div>
    </form>
</@common.page>