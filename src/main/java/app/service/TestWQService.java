package app.service;

import app.Domain.TestWithQuestions;
import app.Repository.TestWQRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestWQService {

    @Autowired
    private TestWQRepository testWQRepository;

    public void save(TestWithQuestions testWithQuestions){
        testWQRepository.save(testWithQuestions);
    }
}
