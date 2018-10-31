package app.Repository;

import app.Domain.Message;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepository extends CrudRepository <Message, Long> {

    List<Message> findByTag(String tag);

}
