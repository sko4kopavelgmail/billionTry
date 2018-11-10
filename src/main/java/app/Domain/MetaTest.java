package app.Domain;

import app.Domain.BaseEntity.BaseEntity;

import javax.persistence.*;

@Entity
@Table(name = "meta_test", schema = "public", catalog = "Students")
public class MetaTest extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne
    private Test test;

    @ManyToOne
    private User user;

    private String startTime;

    private String endTime;

    private double assessment;

    public MetaTest(Test test, User user, String startTime, String endTime, double assessment) {
        this.test = test;
        this.user = user;
        this.startTime = startTime;
        this.endTime = endTime;
        this.assessment = assessment;
    }

    public MetaTest() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Test getTest() {
        return test;
    }

    public void setTest(Test test) {
        this.test = test;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public double getAssessment() {
        return assessment;
    }

    public void setAssessment(double assessment) {
        this.assessment = assessment;
    }
}
