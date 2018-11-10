package app.service;

import app.Domain.MetaTest;
import app.Repository.MetaTestRetository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MetaTestService {

    @Autowired
    private MetaTestRetository metaTestRetository;

    public Iterable<MetaTest> getMetaTestByTest(Long id){
        return metaTestRetository.findAllByTest(id);
    }
}
