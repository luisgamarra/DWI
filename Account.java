package pe.edu.utp.BDWebApplication.models;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Diego on 15/06/2017.
 */
public class Account {
private int id;
private String type;
private String name;

    public Account() {
    }

    public Account(int id, String type, String name) {
        this.id = id;
        this.type = type;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public String getIdAsString() {
        return String.valueOf(getId());
    }

    public Account setId(int id) {
        this.id = id;
        return this;
    }

    public String getType() {
        return type;
    }

    public String getTypeAsValue() {
        return "'" + getType() + "'";
    }

    public Account setType(String type) {

        this.type = type;
        return this;
    }

    public String getName() {
        return name;
    }

    public String getNameAsValue() {
        return "'" + getName() + "'";
    }

    public Account setName(String name) {

        this.name = name;
        return this;
    }

    public static Account build(ResultSet resultSet) {
        try {
            return (new Account())
                    .setId(resultSet.getInt("account_id"))
                    .setType(resultSet.getString("account_type"))
                    .setName(resultSet.getString("account_name"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
