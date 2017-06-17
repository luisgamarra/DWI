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
    private Date fecha;
    private User user;
    private Place place;
    private Photo photo;
    private Video video;
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

    public Date getFecha() {return fecha; }

    public String getFechaValue() { return "'" + getFecha() + "'";}

    public Storie setFecha(Date fecha) {
        this.fecha = fecha;
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

    public Photo getPhoto() {
        return photo;
    }

    public Storie setPhoto(Photo photo) {
        this.photo = photo;
        return this;
    }

    public Video getVideo() {
        return video;
    }

    public Storie setVideo(Video video) {
        this.video = video;
        return this;
    }

    public Comment getComment() {
        return comment;
    }

    public Storie setComment(Comment comment) {
        this.comment = comment;
        return this;
    }

    public static Storie build(ResultSet resultSet,
                               UsersEntity usersEntity,
                               AccountsEntity accountsEntity,
                               PlacesEntity placesEntity,
                               PhotosEntity photosEntity,
                               VideosEntity videosEntity,
                               CommentsEntity commentsEntity) {
        try {
            return (new Storie())
                    .setId(resultSet.getInt("storie_id"))
                    .setName(resultSet.getString("storie_name"))
                    .setDescription(resultSet.getString("description"))
                    .setFecha(resultSet.getDate("fecha"))
                    .setUser(usersEntity.findById(resultSet.getInt("user_id"), accountsEntity))
                    .setPlace(placesEntity.findById(resultSet.getInt("place_id")))
                    .setPhoto(photosEntity.findById(resultSet.getInt("photo_id")))
                    .setVideo(videosEntity.findById(resultSet.getInt("video_id")))
                    .setComment(commentsEntity.findById(resultSet.getInt("comment_id"), usersEntity, accountsEntity));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
