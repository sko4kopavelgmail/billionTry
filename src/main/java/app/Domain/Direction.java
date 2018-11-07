package app.Domain;

import javax.persistence.*;

@Entity
public class Direction {

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

}
