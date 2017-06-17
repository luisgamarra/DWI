package pe.edu.utp.BDWebApplication.models;

import java.sql.Connection;
import java.util.List;

/**
 * Created by Lucero on 16/06/2017.
 */
public class HRDataStore {

    private Connection connection;
    private AccountsEntity accountsEntity;
    private CommentsEntity commentsEntity;
    private PhotosEntity photosEntity;
    private PlacesEntity placesEntity;
    private StoriesEntity storiesEntity;
    private UsersEntity usersEntity;
    private VideosEntity videosEntity;

    public HRDataStore(Connection connection) {
        this.connection = connection;
    }

    public HRDataStore() {
    }

    public Connection getConnection() {
        return connection;
    }

    public HRDataStore setConnection(Connection connection) {
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

    private PhotosEntity getPhotosEntity() {
        if(photosEntity == null) {
            photosEntity = new PhotosEntity(getConnection());
        }
        return photosEntity;
    }

    public List<Photo> findAllPhoto() {
        return getPhotosEntity().findAll(); }

    public boolean createPhoto(Photo photo) {
        return getPhotosEntity().add(photo);
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

    public List<Storie> findAllStorie() { return getStoriesEntity().findAll(getUsersEntity(),getAccountsEntity(),getPlacesEntity(), getPhotosEntity(),getVideosEntity(),getCommentsEntity());
    }

    private VideosEntity getVideosEntity() {
        if(videosEntity == null) {
            videosEntity = new VideosEntity(getConnection());
        }
        return videosEntity;
    }

    public List<Video> findAllVideo() {
        return getVideosEntity().findAll(); }

    public boolean createVideo(Video video) {
        return getVideosEntity().add(video);
    }

}
