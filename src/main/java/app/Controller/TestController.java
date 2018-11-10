package app.Controller;

import app.Domain.Language;
import app.Domain.Question;
import app.service.QuestionService;
import app.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/test")
public class TestController {

    @Autowired
    private TestService testService;

    @Autowired
    private QuestionService questionService;

    @GetMapping
    public String greeting() {
        return "test";
    }

    /*Зашрузка страницы добавления теста*/
    @GetMapping("addTest")
    public String loadAddTest(
            Model model,
            @RequestParam(required = false, defaultValue = "") String filterQuestion
    ) {

        Iterable<Question> questions = testService.filter(filterQuestion);
        model.addAttribute("questions", questions);
        model.addAttribute("filterQuestion", filterQuestion);
        return "addTest";
    }

    /*Обработка того, что прислала страницы добавления теста*/
    @PostMapping("addTest")
    public String addTest(
            @RequestParam Map<String, String> form,
            @RequestParam String name
    ) {
        testService.addTest(name, form);
        return "redirect:/test";
    }

    /*Загрузка страницы добавления вопроса*/
    @GetMapping("addQuestion")
    public String loadAddQuestion(Model model) {
        model.addAttribute("languages", Language.values());
        return "addQuestion";
    }

    /*Обработка того, что прислала страницы добавления вопроса*/
    @PostMapping("addQuestion")
    public String addQuestion(
            @RequestParam Map<String, String> form
    ) {
        questionService.addQuestion(form);
        return "redirect:/test/addTest";
    }

    //-----------
    @GetMapping("editTest")
    public String editTest() {

        return "editTest";
    }

    @GetMapping("testStudents")
    public String testStudents() {

        return "testStudents";
    }
}
