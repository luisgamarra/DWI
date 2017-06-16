package Models;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by ErickRojas on 15/06/2017.
 */
public class Photo {
    private int id;
    private String name;
    private Stories storie_id;

    public Photo(){

    }

    public int getId() {
        return id;
    }

    public Photo setId(int id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public Photo setName(String name) {
        this.name = name;
        return this;
    }

    public Stories getStorie_id() {
        return storie_id;
    }

    public Photo setStorie_id(Stories storie_id) {
        this.storie_id = storie_id;
        return this;
    }

    public static Photo build(ResultSet rs/* ,StoriesEntity storiesEntity  */){
        try {
            return (new Photo()).setId(rs.getInt("photo_id"))
                    .setName(rs.getString("photo_name"))/*
                    .setStorie(storiesEntity.findById(rs.getInt("storie_id")))*/;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String getIdAsString() {
        return String.valueOf(getId());
    }

    public String getNameAsValue() {
        return "'" + getName() + "'";
    }

}
