package pe.edu.utp.BDWebApplication.models;

import java.sql.Connection;
import java.util.List;

/**
 * Created by Lucero on 16/06/2017.
 */
public class APDataStore {

    private Connection connection;
    private AccountsEntity accountsEntity;
    private CommentsEntity commentsEntity;
    private Media_ContentsEntity media_contentsEntity;
    private PlacesEntity placesEntity;
    private StoriesEntity storiesEntity;
    private UsersEntity usersEntity;

    public APDataStore(Connection connection) {
        this.connection = connection;
    }

    public APDataStore() {
    }

    public Connection getConnection() {
        return connection;
    }

    public APDataStore setConnection(Connection connection) {
        this.connection = connection;
        return this;
    }

    private AccountsEntity getAccountsEntity() {
        if(accountsEntity == null) {
            accountsEntity= new AccountsEntity(getConnection());
        }
        return accountsEntity;
    }

    public List<Account> findAllAccounts() {
        return getAccountsEntity().findAll();
    }

    public boolean createAccount(Account account) {
        return getAccountsEntity().add(account);
    }

    private UsersEntity getUsersEntity() {
        if(usersEntity == null) {
            usersEntity = new UsersEntity(getConnection());
        }
        return usersEntity;
    }

    public List<User> findAllUser() {
        return getUsersEntity().findAll(getAccountsEntity());
    }

    private CommentsEntity getCommentsEntity() {
        if(commentsEntity == null) {
            commentsEntity = new CommentsEntity(getConnection());
        }
        return commentsEntity;
    }

    public List<Comment> findAllComment() { return getCommentsEntity().findAll(getUsersEntity(),getAccountsEntity());
    }

    private PlacesEntity getPlacesEntity() {
        if(placesEntity == null) {
            placesEntity = new PlacesEntity(getConnection());
        }
        return placesEntity;
    }

    public List<Place> findAllPlace() {
        return getPlacesEntity().findAll(); }

    public boolean createPlace(Place place) {
        return getPlacesEntity().add(place);
    }

    private StoriesEntity getStoriesEntity() {
        if(storiesEntity == null) {
           storiesEntity = new StoriesEntity(getConnection());
        }
        return storiesEntity;
    }

    public List<Storie> findAllStorie() { return getStoriesEntity().findAll(getUsersEntity(),getAccountsEntity(),getPlacesEntity(), getMedia_contentsEntity(),getCommentsEntity());
    }

    private Media_ContentsEntity getMedia_contentsEntity() {
        if(media_contentsEntity == null) {
            media_contentsEntity= new Media_ContentsEntity(getConnection());
        }
        return media_contentsEntity;
    }

    public List<Media_content> findAllMedia() {
        return getMedia_contentsEntity().findAll();
    }

    public boolean createMedia(Media_content media_content) {
        return getMedia_contentsEntity().add(media_content);
    }
}
