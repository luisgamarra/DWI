package pe.edu.utp.BDWebApplication.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Lucero on 15/06/2017.
 */
public class UsersEntity extends BaseEntity {

    public UsersEntity(Connection connection) {
        super(connection, "users");
    }

    public UsersEntity() {
        super();
    }

    public List<User> findAll(AccountsEntity accountsEntity) {
        return findByCriteria("", accountsEntity);
    }

    public User findById(String id, AccountsEntity accountsEntity) {
        String criteria = "user_id = " + "'" + id + "'";
        return findByCriteria(criteria, accountsEntity).get(0);
    }

    public List<User> findAllOrderByName(AccountsEntity accountsEntity, boolean isAscending) {
        return findByCriteria("true ORDER BY user_name" +
                (isAscending ? "" : " DESC"), accountsEntity );
    }

    public List<User> findByCriteria(String criteria, AccountsEntity accountsEntity) {
        String sql = getDefaultQuery() + (criteria.isEmpty() ? "" : " WHERE " + criteria);
        List<User> users = new ArrayList<>();
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            if(rs == null) return null;
            while(rs.next()) users.add(User.build(rs, accountsEntity));
            return users;
        } catch(SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    public boolean add(User user) {
        String sql = "INSERT INTO users(user_id, user_name, user_lastname, user_pass, phone, email, photo, account_id) VALUES(" +
                user.getIdAsValue() + ", " +
                user.getNameAsValue() + ", " +
                user.getLastname() + ", " +
                user.getPass() + ", " +
                user.getPhone() + ", " +
                user.getEmail() + ", " +
                user.getPhoto() + ", " +
                user.getAccount().getIdAsString() + ")";
        return change(sql);
    }

    public boolean update(User user) {
        String sql = "UPDATE users SET " +
                "user_name = " + user.getNameAsValue() + ", " +
                "user_lastname = " + user.getLastnameAsValue() + ", " +
                "user_pass = " + user.getPassAsValue() + ", " +
                "phone = " + user.getPhoneAsValue() + ", " +
                "email = " + user.getEmailAsValue() + ", " +
                "photo = " + user.getPhotoAsValue() + ", " +
                "account_id = " + user.getAccount().getIdAsString() +
                " WHERE user _id = " + user.getIdAsValue();
        return change(sql);
    }

    public boolean delete(User user) {
        String sql = "DELETE FROM users WHERE user_id = " +
                user.getIdAsValue();
        return change(sql);
    }

    public boolean delete(String id) {
        String sql = "DELETE FROM users WHERE user_id = " +
                "'" + id + "'";
        return change(sql);
    }

}
