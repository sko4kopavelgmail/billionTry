package app.Domain;

import javax.persistence.*;

@Entity
@Table(name = "S_group")
public class Group {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String groupName;

    @ManyToOne
    @JoinColumn(name = "direction_id")
    private Direction direction;

    public Group() {
    }

    public Group(String groupName, Direction direction) {
        this.groupName = groupName;
        this.direction = direction;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public Direction getDirection() {
        return direction;
    }

    public void setDirection(Direction direction) {
        this.direction = direction;
    }
}
