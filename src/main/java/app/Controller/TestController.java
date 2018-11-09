package app.Controller;

import app.Domain.Language;
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
    public String greeting(){
        return "test";
    }

    @GetMapping("addTest")
    public String loadAddTest(Model model){
        model.addAttribute("langs",Language.values());
        model.addAttribute("questions",questionService.findAll());
        return "addTest";
    }

    @PostMapping("addTest")
    public String addTest(
            @RequestParam Map<String, String> form,
            @RequestParam String name
    ){
        testService.addTest(name, form);
        return "redirect:/test";
    }

    //-----------
    @GetMapping("editTest")
    public String editTest(){

        return "editTest";
    }

    @GetMapping("testStudents")
    public String testStudents(){

        return "testStudents";
    }
}
