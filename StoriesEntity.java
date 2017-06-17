package pe.edu.utp.BDWebApplication.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Lucero on 16/06/2017.
 */
public class StoriesEntity extends BaseEntity {

    public StoriesEntity() {
        super();
        setTableName("stories");
    }

    public StoriesEntity(Connection connection) {
        super(connection, "stories");
    }

    public List<Storie> findByCriteria(
            String criteria,
            UsersEntity usersEntity,
            AccountsEntity accountsEntity,
            PlacesEntity placesEntity,
            PhotosEntity photosEntity,
            VideosEntity videosEntity,
            CommentsEntity commentsEntity) {
        String sql = getDefaultQuery() +
                (criteria.isEmpty() ? "" : " WHERE " + criteria);

        List<Storie> stories = new ArrayList<>();
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            if (rs == null) return null;
            while (rs.next()) {
                stories.add(
                        Storie.build(rs, usersEntity, accountsEntity, placesEntity, photosEntity, videosEntity, commentsEntity));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return stories;
    }

    public List<Storie> findAll(UsersEntity usersEntity, AccountsEntity accountsEntity, PlacesEntity placesEntity, PhotosEntity photosEntity, VideosEntity videosEntity, CommentsEntity commentsEntity) {
        return findByCriteria("", usersEntity, accountsEntity, placesEntity, photosEntity, videosEntity, commentsEntity);
    }

    public Storie findById(int id, UsersEntity usersEntity, AccountsEntity accountsEntity, PlacesEntity placesEntity, PhotosEntity photosEntity, VideosEntity videosEntity, CommentsEntity commentsEntity) {
        try {
            String sql = "storie_id = " + String.valueOf(id);
            return findByCriteria(sql, usersEntity, accountsEntity, placesEntity, photosEntity, videosEntity, commentsEntity).get(0);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public boolean add(Storie storie) {
        String sql = "INSERT INTO stories(storie_id,storie_name,description,fecha,user_id,place_id,photo_id,video_id,comment_id) VALUES(" +
                storie.getIdAsValue() + ", " +
                storie.getNameAsValue() + ", " +
                storie.getDescriptionAsValue() + ", " +
                storie.getFechaValue() + ", " +
                storie.getUser().getIdAsValue() + ")"+
                storie.getPlace().getIdAsValue() + ")"+
                storie.getPhoto().getIdAsValue() + ")"+
                storie.getVideo().getIdAsValue() + ")"+
                storie.getComment().getIdAsValue() + ")";
        return change(sql);
    }

    public boolean update(Storie storie) {
        String sql = "UPDATE stories SET " +
                "storie_name = " + storie.getNameAsValue() + ", " +
                "description = " + storie.getDescriptionAsValue() + ", " +
                "user_id = " + storie.getUser().getIdAsValue() +
                "place_id = " + storie.getPlace().getIdAsValue() +
                "photo_id = " + storie.getPhoto().getIdAsValue() +
                "video_id = " + storie.getVideo().getIdAsValue() +
                "comment_id = " + storie.getVideo().getIdAsValue() +
                " WHERE storie _id = " + storie.getIdAsValue();
        return change(sql);
    }

    public boolean delete(Storie storie) {
        String sql = "DELETE FROM stories WHERE storie_id = " +
                storie.getIdAsValue();
        return change(sql);
    }

    public boolean delete(String id) {
        String sql = "DELETE FROM stories WHERE storie_id = " +
                "'" + id + "'";
        return change(sql);
    }

}

