package pe.edu.utp.BDWebApplication.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Diego on 16/06/2017.
 */
public class CommentsEntity extends BaseEntity {

    public CommentsEntity() {
        super();
        setTableName("comments");
    }

    public CommentsEntity(Connection connection) {
        super(connection, "comments");
    }

    public List<Comment> findByCriteria(
            String criteria,
            UsersEntity usersEntity,
            AccountsEntity accountsEntity) {
        String sql = getDefaultQuery() +
                (criteria.isEmpty() ? "" : " WHERE " + criteria);
        List<Comment> comments = new ArrayList<>();
        try {
            ResultSet rs = getConnection()
                    .createStatement()
                    .executeQuery(sql);
            if(rs == null) return null;
            while(rs.next()) {
                comments.add(
                        Comment.build(rs, usersEntity, accountsEntity));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comments;
    }

    public List<Comment> findAll(UsersEntity usersEntity,AccountsEntity accountsEntity) {
        return findByCriteria("", usersEntity,accountsEntity);
    }

    public Comment findById(int id, UsersEntity usersEntity,AccountsEntity accountsEntity) {
        try {
            String sql = "comment_id = " + String.valueOf(id);
            return findByCriteria(sql, usersEntity,accountsEntity).get(0);
        } catch(Exception e) {
            e.printStackTrace();
        }
        return null;
    }

     public boolean add(Comment comment) {
        String sql = "INSERT INTO comments(comment_id, description,created_at, user_id) VALUES(" +
                comment.getIdAsValue() + ", " +
                comment.getDescripcionAsValue() + ", " +
                comment.getCreatedAsValue()+","+
                comment.getUser().getIdAsValue() + ")";
        return change(sql);
    }

    public boolean update(Comment comment) {
        String sql = "UPDATE comments SET " +
                "description = " + comment.getDescripcionAsValue() + ", " +
                "created_at = " + comment.getCreatedAsValue() + ", " +
                "user_id = " + comment.getUser().getIdAsValue() +
                " WHERE comment _id = " + comment.getIdAsValue();
        return change(sql);
    }

    public boolean delete(Comment comment) {
        String sql = "DELETE FROM comments WHERE comment_id = " +
                comment.getIdAsValue();
        return change(sql);
    }

    public boolean delete(String id) {
        String sql = "DELETE FROM comments WHERE comment_id = " +
                "'" + id + "'";
        return change(sql);
    }

}
