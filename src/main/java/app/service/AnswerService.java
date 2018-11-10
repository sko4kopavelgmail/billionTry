package app.service;

import app.Domain.Answers;
import app.Repository.AnswerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AnswerService {

    @Autowired
    private AnswerRepository answerRepository;

    public Iterable<Answers> getAnswersByTest(Long id){
        return answerRepository.findAllByTestWithQuestions(id);
    }
}
