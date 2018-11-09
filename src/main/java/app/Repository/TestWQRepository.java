package app.Repository;

import app.Domain.TestWithQuestions;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TestWQRepository extends JpaRepository<TestWithQuestions, Long>{

}
