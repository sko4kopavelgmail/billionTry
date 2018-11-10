package app.Repository;

import app.Domain.MetaTest;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MetaTestRetository extends JpaRepository<MetaTest, Long> {
    Iterable<MetaTest> findAllByTest(Long id);
}
