package app.Domain;

import javax.persistence.*;
import java.util.Set;

@Entity
public class Question {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String question;

    @ElementCollection(targetClass = Language.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "question_language", joinColumns = @JoinColumn(name = "question_id"))
    @Enumerated(EnumType.STRING)
    private Set<Language> languages;

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public Set<Language> getLanguages() {
        return languages;
    }

    public void setLanguages(Set<Language> languages) {
        this.languages = languages;
    }

    public Question() {

    }

    public Question(String question, Set<Language> languages) {
        this.question = question;
        this.languages = languages;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
