package app.Repository;

import app.Domain.Question;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface QuestionRepository extends JpaRepository<Question, Long> {
    List<Question> findAllById(Long id);

    Iterable<Question> findAllByOrderByIdDesc();

    Iterable<Question> findByQuestionContaining(String filter);

}
