package app.Repository;

import app.Domain.Answers;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AnswerRepository extends JpaRepository<Answers, Long> {
    Iterable<Answers> findAllByTestWithQuestions(Long id);
}
