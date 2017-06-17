package pe.edu.utp.BDWebApplication.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 * Created by Diego on 16/06/2017.
 */
public class AccountsEntity extends BaseEntity{

    public AccountsEntity(Connection connection) {
        super(connection, "accounts");
    }

    public AccountsEntity() {
        super();
    }

    List<Account> findAll() {
        return findByCriteria("");
    }

    public Account findById(int id) {
        String criteria = " account_id = " +
                String.valueOf(id);
        return findByCriteria(criteria).get(0);
    }

    public Account findByType (String type) {
        String criteria = " account_type = '" + type + "'";
        return findByCriteria(criteria).get(0);
    }

    public Account findByName(String name) {
        String criteria = " account_name = '" + name + "'";
        return findByCriteria(criteria).get(0);
    }

    public List<Account> findAllOrderedByName() {
        String criteria = "true ORDER BY account_name";
        return findByCriteria(criteria);
    }


    public List<Account> findByCriteria(String criteria) {
        String sql = getDefaultQuery() +
                criteria == "" ? "" : " WHERE " + criteria;
        List<Account> accounts = new ArrayList<>();
        try {
            ResultSet resultSet = getConnection()
                    .createStatement()
                    .executeQuery(sql);
            if(resultSet == null) return null;
            while(resultSet.next()) {
                accounts.add((new Account())
                        .setId(resultSet.getInt("account_id"))
                        .setType(resultSet.getString("account_type"))
                        .setName(resultSet.getString("account_name")));
            }
            return accounts;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean add(Account account) {
        String sql = "INSERT INTO accounts(account_id, account_type,account_name) " +
                "VALUES(" + account.getIdAsString() + ", " + account.getTypeAsValue() +
                account.getNameAsValue() + ")";
        return change(sql);
    }

    public boolean delete(Account account) {
        String sql = "DELETE FROM accounts WHERE account_id = " + account.getIdAsString();
        return change(sql);
    }

    public boolean delete(String type, String name) {
        return change("DELETE FROM accounts WHERE account_type = " +
                "'" + type + ", account_name ="+"'" + name + "'");
    }

    public boolean update(Account account) {
        String sql = "UPDATE accounts SET" +
                "account_type = " + account.getTypeAsValue() + ", " +
                "account_name = " + account.getNameAsValue() +
                " WHERE account_id = " + account.getIdAsString();
        return change(sql);
    }
}
