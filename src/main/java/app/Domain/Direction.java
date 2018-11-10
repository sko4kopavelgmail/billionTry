package app.Domain;

import app.Domain.BaseEntity.BaseEntity;

import javax.persistence.*;

@Entity
public class Direction extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String directionName;

    @ManyToOne
    @JoinColumn(name = "faculty_id")
    private Faculty faculty;

    public String getDirectionName() {
        return directionName;
    }

    public void setDirectionName(String directionName) {
        this.directionName = directionName;
    }

    public Faculty getFaculty() {
        return faculty;
    }

    public void setFaculty(Faculty faculty) {
        this.faculty = faculty;
    }

    public Direction() {
    }

    public Direction(String directionName, Faculty faculty) {

        this.directionName = directionName;
        this.faculty = faculty;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
