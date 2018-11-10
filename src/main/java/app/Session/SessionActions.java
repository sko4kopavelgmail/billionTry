package app.Session;

import app.Domain.BaseEntity.BaseEntity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class SessionActions {

    @Autowired
    private SessionFactory sessionFactory;

    public SessionActions() {

    }

    private Session session;

    public BaseEntity getEntityObgect(BaseEntity baseEntity, Long id){
        session = sessionFactory.openSession();
        baseEntity = session.load(baseEntity.getClass(),id);
        closeSession();
        return baseEntity;
    }


    public boolean delete(BaseEntity baseEntity, Long id){
        session = sessionFactory.openSession();
        session.beginTransaction();
        baseEntity.setId(id);
        session.delete(baseEntity);
        session.getTransaction().commit();
        return false;
    }

    private void closeSession(){
        session.close();
    }
}
