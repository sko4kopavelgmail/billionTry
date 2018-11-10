package app.Domain;

import app.Domain.BaseEntity.BaseEntity;

import javax.persistence.*;

@Entity
public class Answers extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String answer;

    @ManyToOne
    private User user;

    @ManyToOne
    private TestWithQuestions testWithQuestions;

    public Answers(String answer, User user, TestWithQuestions testWithQuestions) {
        this.answer = answer;
        this.user = user;
        this.testWithQuestions = testWithQuestions;
    }

    public Answers() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public TestWithQuestions getTestWithQuestions() {
        return testWithQuestions;
    }

    public void setTestWithQuestions(TestWithQuestions testWithQuestions) {
        this.testWithQuestions = testWithQuestions;
    }
}
