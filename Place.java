package pe.pageadventures.models;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Luis on 15/06/2017.
 */
public class Place {
    private int id;
    private String name;
    private String description;
    private String department;
    private String photo;

    public Place() {
    }

    public Place(int id, String name, String description, String department, String photo) {
        this.setId(id);
        this.setName(name);
        this.setDescription(description);
        this.setDepartment(department);
        this.setPhoto(photo);
    }


    public int getId() {
        return id;
    }

    public Place setId(int id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public Place setName(String name) {
        this.name = name;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public Place setDescription(String description) {
        this.description = description;
        return this;
    }

    public String getDepartment() {
        return department;
    }

    public Place setDepartment(String department) {
        this.department = department;
        return this;
    }

    public String getPhoto() {
        return photo;
    }

    public Place setPhoto(String photo) {
        this.photo = photo;
        return this;
    }

    public static Place build(ResultSet rs) {
        try {
            return (new Place())
                    .setId(rs.getInt("place_id"))
                    .setName(rs.getString("place_name"))
                    .setDescription(rs.getString("description"))
                    .setDepartment(rs.getString("department"))
                    .setPhoto(rs.getString("photo"));

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
