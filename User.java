package pe.edu.utp.BDWebApplication.models;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Lucero on 14/06/2017.
 */
public class User {

        private int id;
        private int phone;
        private String name;
        private String lastname;
        private String pass;
        private String email;
        private String photo;
        private Account account;

        public User() {
        }

        public User(int id, int phone, String name, String lastname, String pass, String email, String photo, Account account) {
                this.id = id;
                this.phone = phone;
                this.name = name;
                this.lastname = lastname;
                this.pass = pass;
                this.email = email;
                this.photo = photo;
                this.account = account;
        }

        public int getId() { return id; }

        public String getIdAsValue() { return "'" + getId() + "'";}

        public User setId(int id) {
                this.id = id;
                return this;
        }

        public int getPhone() {return phone; }

        public String getPhoneAsValue() {
                return "'" + getPhone() + "'";
        }

        public User setPhone(int phone) {
                this.phone = phone;
                return this;
        }

        public String getName() {return name; }

        public String getNameAsValue() { return "'" + getName() + "'";}

        public User setName(String name) {
                this.name = name;
                return this;
        }

        public String getLastname() {return lastname; }

        public String getLastnameAsValue() {
                return "'" + getLastname() + "'";
        }

        public User setLastname(String lastname) {
                this.lastname = lastname;
                return this;
        }

        public String getPass() {return pass; }

        public String getPassAsValue() {
                return "'" + getPass() + "'";
        }

        public User setPass(String pass) {
                this.pass = pass;
                return this;
        }

        public String getEmail() {return email; }

        public String getEmailAsValue() {
                return "'" + getEmail() + "'";
        }

        public User setEmail(String email) {
                this.email = email;
                return this;
        }

        public String getPhoto() {return photo; }

        public String getPhotoAsValue() {
                return "'" + getPhoto() + "'";
        }

        public User setPhoto(String photo) {
                this.photo = photo;
                return this;
        }

        public Account getAccount() {return account; }

        public User setAccount(Account account) {
                this.account = account;
                return this;
        }

        public static User build(ResultSet rs,AccountsEntity accountsEntity) {
                try {
                        return (new User())
                                .setId(rs.getInt("user_id"))
                                .setName(rs.getString("user_name"))
                                .setLastname(rs.getString("user_lastname"))
                                .setPass(rs.getString("user_pass"))
                                .setPhone(rs.getInt("phone"))
                                .setEmail(rs.getString("email"))
                                .setPhoto(rs.getString("photo"))
                                .setAccount(accountsEntity.findById(rs.getInt("account_id")));
                } catch (SQLException e) {
                        e.printStackTrace();
                }
                return null;
        }
}
