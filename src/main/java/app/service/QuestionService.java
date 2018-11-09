package app.service;

import app.Domain.Language;
import app.Domain.Question;
import app.Repository.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
public class QuestionService {

    @Autowired
    private QuestionRepository questionRepository;

    public List<Question> findAll(){
        return (List<Question>) questionRepository.findAll();
    }

    public void addQuestion(String question, Set<Language> languages){
        if (!question.isEmpty() && !languages.isEmpty()) {
            questionRepository.save(new Question(question, languages));
        }
    }

    public Question getQuestion(Long id){
        List<Question> questions = questionRepository.findAllById(id);
        return questions.get(0);

    }
}
