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
            Media_ContentsEntity media_contentsEntity,
            CommentsEntity commentsEntity) {
        String sql = getDefaultQuery() +
                (criteria.isEmpty() ? "" : " WHERE " + criteria);

        List<Storie> stories = new ArrayList<>();
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            if (rs == null) return null;
            while (rs.next()) {
                stories.add(
                        Storie.build(rs, usersEntity, accountsEntity, placesEntity,
                                media_contentsEntity, commentsEntity));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return stories;
    }

    public List<Storie> findAll(UsersEntity usersEntity, AccountsEntity accountsEntity,
                                PlacesEntity placesEntity,Media_ContentsEntity media_contentsEntity,
                                 CommentsEntity commentsEntity) {
        return findByCriteria("", usersEntity, accountsEntity, placesEntity,
                media_contentsEntity, commentsEntity);
    }

    public Storie findById(int id, UsersEntity usersEntity, AccountsEntity accountsEntity,
                           PlacesEntity placesEntity, Media_ContentsEntity media_contentsEntity,
                            CommentsEntity commentsEntity) {
        try {
            String sql = "storie_id = " + String.valueOf(id);
            return findByCriteria(sql, usersEntity, accountsEntity, placesEntity,
                    media_contentsEntity, commentsEntity).get(0);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public boolean add(Storie storie) {
        String sql = "INSERT INTO stories(storie_id,storie_name,description," +
                "created_at,user_id,place_id,media_content_id,comment_id) VALUES(" +
                storie.getIdAsValue() + ", " +
                storie.getNameAsValue() + ", " +
                storie.getDescriptionAsValue() + ", " +
                storie.getCreatedAsValue() + ", " +
                storie.getUser().getIdAsValue() + ")"+
                storie.getPlace().getIdAsValue() + ")"+
                storie.getMedia_content().getIdAsValue() + ")"+
                storie.getComment().getIdAsValue() + ")";
        return change(sql);
    }

    public boolean update(Storie storie) {
        String sql = "UPDATE stories SET " +
                "storie_name = " + storie.getNameAsValue() + ", " +
                "description = " + storie.getDescriptionAsValue() + ", " +
                "created_at = " + storie.getCreatedAsValue() + ", " +
                "user_id = " + storie.getUser().getIdAsValue() +
                "place_id = " + storie.getPlace().getIdAsValue() +
                "media_content_id = " + storie.getMedia_content().getIdAsValue() +
                "comment_id = " + storie.getComment().getIdAsValue() +
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

