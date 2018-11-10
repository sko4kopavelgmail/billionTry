package app.service;

import app.Domain.Language;
import app.Domain.Question;
import app.Repository.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class QuestionService {

    @Autowired
    private QuestionRepository questionRepository;

    public List<Question> findAll() {
        return (List<Question>) questionRepository.findAll();
    }

    public boolean addQuestion(Map<String, String> form) {
        form.remove("_csrf");

        if (form.size() == 1 && form.get("question1").isEmpty()) {
            return false;
        }

        Set<String> languages = Arrays.stream(Language.values())
                .map(Language::name)
                .collect(Collectors.toSet());

        Question newQuestion = null;

        for (String key : form.keySet()) {
            if (key.contains("question")) {
                newQuestion = new Question();
                newQuestion.setQuestion(form.get(key));
            } else if (key.contains("radioGroup")) {
                newQuestion.getLanguages().add(Language.valueOf(form.get(key)));
                questionRepository.save(newQuestion);
            }
        }

        return true;
    }

    public Question getQuestion(Long id) {
        List<Question> questions = questionRepository.findAllById(id);
        return questions.get(0);

    }

    public Iterable<Question> findAllByOrderByIdDesc() {
        return questionRepository.findAllByOrderByIdDesc();
    }

    public Iterable<Question> findByQuestionContaining(String filter) {
        return questionRepository.findByQuestionContaining(filter);
    }

}
