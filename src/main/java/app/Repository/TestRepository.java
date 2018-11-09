package app.Repository;

import app.Domain.Test;
import org.springframework.data.repository.CrudRepository;

public interface TestRepository extends CrudRepository<Test,Long> {
    Test findByName(String name);


}
