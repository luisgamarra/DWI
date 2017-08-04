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
 
    public APService() {
        try {
            InitialContext ctx = new InitialContext();
            connection = ((DataSource) ctx.lookup("jdbc/MySQLDataSource"))
                    .getConnection();
        } catch (NamingException e) {
            e.printStackTrace();
        } catch (SQLException e) {
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
    
    
    public List<Comment> getCommentByStoryid(int id){
        return getDataStore().findCommentByStoryid(id);
    }
    public boolean createComment(Comment comment) { return getDataStore().createComment(comment); } 
    public boolean deleteCommentsbyStoryId(Comment comment) { return getDataStore().deleteCommentbyStoryId(comment); }
    public boolean deleteComments(Comment comment) { return getDataStore().deleteComment(comment); }

    public List<Place> getPlaces() {return getDataStore().findAllPlaces();}
        
    public Place getPlaceByName(String name){
        return  getDataStore().findByName(name);
    }
    
  public Place getPlaceById(int id) {
        return getDataStore().findPlaceById(id);
    }

    public Place getPlaceById(String id) {
        return getDataStore().findPlaceById(Integer.parseInt(id));
    }

    public User getUserByNamePass(String name,String pass){
        return getDataStore().finUserByNamePass(name,pass);
    }
}
