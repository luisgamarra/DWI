package pe.edu.utp.BDWebApplication.models;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Diego on 16/06/2017.
 */
public class Comment {
  private int id;
  private String description;
   private User user;


    public Comment() {
    }

    public Comment(int id, String description, User user) {
        this.id = id;
        this.description = description;
        this.user = user;
    }

    public int getId() { return id; }

    public String getIdAsValue() { return "'" + getId() + "'";}

    public Comment setId(int id) {
        this.id = id;
        return this;
    }

    public String getDescription() { return description; }

    public String getDescripcionAsValue() {
        return "'" + getDescription() + "'";
    }

    public Comment setDescription(String description) {
        this.description = description;
        return this;
    }

    public User getUser() {return user; }

    public Comment setUser(User user) {
        this.user = user;
        return this;
    }


    public static Comment build(ResultSet resultSet,
                                UsersEntity usersEntity,
                                AccountsEntity accountsEntity) {
        try {
            return (new Comment())
                    .setId(resultSet.getInt("comment_id"))
                    .setDescription(resultSet.getString("description"))
                    .setUser(usersEntity.findById(resultSet.getInt("user_id"), accountsEntity));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


}
