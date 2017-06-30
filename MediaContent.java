package Models;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by ErickRojas on 30/06/2017.
 */
public class MediaContent {

    private int id;
    private String name;
    private String url;

    public int getId() {
        return id;
    }

    public MediaContent setId(int id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public MediaContent setName(String name) {
        this.name = name;
        return this;
    }

    public String getUrl() {
        return url;
    }

    public MediaContent setUrl(String url) {
        this.url = url;
        return this;
    }

    public static MediaContent build(ResultSet rs/* ,StoriesEntity storiesEntity  */){
        try {
            return (new MediaContent()).setId(rs.getInt("id"))
                    .setName(rs.getString("name")).setUrl(rs.getString("url"))/*
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
