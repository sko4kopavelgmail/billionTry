package app.service;

import app.Domain.Question;
import app.Domain.Test;
import app.Domain.TestWithQuestions;
import app.Repository.QuestionRepository;
import app.Repository.TestRepository;
import app.Repository.TestWQRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service
public class TestService {

    @Autowired
    private TestRepository testRepository;

    @Autowired
    private QuestionService questionService;

    @Autowired
    private TestWQService testWQService;

    public List<Test> findAll() {
        return (List<Test>) testRepository.findAll();
    }

    public void save(Test newTest) {
        testRepository.save(newTest);
    }

    public boolean isExist(String testName) {
        Test testFromDb = testRepository.findByName(testName);
        return testFromDb != null;
    }

    public void addTest(String name, Map<String, String> form) {

        if (!name.isEmpty() && !isExist(form.get(name))) {
            form.remove("name");
            form.remove("_csrf");
            if (!form.isEmpty()) {
                Test newTest = new Test(name);
                save(newTest);
                for (String key : form.keySet()) {
                    Question tmp = questionService.getQuestion(Long.parseLong(key));
                    TestWithQuestions testWithQuestions = new TestWithQuestions(newTest, tmp);
                    testWQService.save(testWithQuestions);
                }
            }

        }

    }

    public Iterable<Question> filter(String filterQuestion) {

        if (filterQuestion.isEmpty()) {
            return questionService.findAllByOrderByIdDesc();
        }else
            return questionService.findByQuestionContaining(filterQuestion);

    }
}
