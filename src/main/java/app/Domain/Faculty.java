package app.Domain;

import app.Domain.BaseEntity.BaseEntity;

import javax.persistence.*;

@Entity
@Table(name = "Faculty")
public class Faculty extends BaseEntity {

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFacultyName() {
        return facultyName;
    }

    public void setFacultyName(String facultyName) {
        this.facultyName = facultyName;
    }

    public Faculty() {

    }

    public Faculty(String facultyName) {
        this.facultyName = facultyName;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String facultyName;

}
