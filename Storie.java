package pe.edu.utp.BDWebApplication.models;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 * Created by Lucero on 14/06/2017.
 */
public class Storie {

    private int id;
    private String name;
    private String description;
    private Date created;
    private User user;
    private Place place;
    private Media_content media_content;
    private Comment comment;

    public int getId() {return id; }

    public String getIdAsValue() { return "'" + getId() + "'";}

    public Storie setId(int id) {
        this.id = id;
        return this;
    }

    public String getName() {return name; }

    public String getNameAsValue() { return "'" + getName() + "'";}

    public Storie setName(String name) {
        this.name = name;
        return this;
    }

    public String getDescription() {return description; }

    public String getDescriptionAsValue() { return "'" + getDescription() + "'";}

    public Storie setDescription(String description) {
        this.description = description;
        return this;
    }


    public Date getCreated() {return created;}

    public String getCreatedAsValue() { return "'" + getCreated() + "'";}

    public Storie setCreated(Date created) {
        this.created = created;
        return this;
    }

    public User getUser() {return user; }

    public Storie setUser(User user) {
        this.user = user;
        return this;
    }

    public Place getPlace() {
        return place;
    }

    public Storie setPlace(Place place) {
        this.place = place;
        return this;
    }

    public Comment getComment() {
        return comment;
    }

    public Storie setComment(Comment comment) {
        this.comment = comment;
        return this;
    }

    public Media_content getMedia_content() {
        return media_content;
    }

    public Storie setMedia_content(Media_content media_content) {
        this.media_content = media_content;
        return this;
    }

    public static Storie build(ResultSet resultSet,
                               UsersEntity usersEntity,
                               AccountsEntity accountsEntity,
                               PlacesEntity placesEntity,
                               Media_ContentsEntity media_contentsEntity,
                               CommentsEntity commentsEntity) {
        try {
            return (new Storie())
                    .setId(resultSet.getInt("storie_id"))
                    .setName(resultSet.getString("storie_name"))
                    .setDescription(resultSet.getString("description"))
                    .setCreated(resultSet.getDate("created_at"))
                    .setUser(usersEntity.findById(resultSet.getInt("user_id"), accountsEntity))
                    .setPlace(placesEntity.findById(resultSet.getInt("place_id")))
                    .setMedia_content(media_contentsEntity.findById(resultSet.getInt("media_content_id")))
                    .setComment(commentsEntity.findById(resultSet.getInt("comment_id"),
                            usersEntity, accountsEntity));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
