package pe.edu.utp.BDWebApplication.services;

import pe.edu.utp.BDWebApplication.models.APDataStore;
import pe.edu.utp.BDWebApplication.models.Account;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Lucero on 17/06/2017.
 */
public class APService {

    private Connection connection;
    private APDataStore dataStore;

    public APService(InitialContext ctx) {
        try {
            connection = ((DataSource) ctx.lookup("jdbc/MySQLDataSource")).getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (NamingException e) {
            e.printStackTrace();
        }
    }

    private Connection getConnection() {
        return connection;
    }

    private APDataStore getDataStore() {
        if(dataStore == null) {
            dataStore = new APDataStore(getConnection());
        }
        return dataStore;
    }

    public List<Account> findAllAccount() {
        return getDataStore().findAllAccounts();
    }


}
