package Models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ErickRojas on 15/06/2017.
 */
public class PhotosEntity extends BaseEntity {


    public PhotosEntity(Connection connection){
        super(connection, "Photos");
    }

    public PhotosEntity(){

    }

    public List<Photo> findByCriteria(String criteria) {
        String sql = getDefaultQuery() +
                criteria == "" ? "" : " WHERE " + criteria;
        List<Photo> photos= new ArrayList<>();
        try {
            ResultSet resultSet = getConnection().createStatement().executeQuery(sql);
            if(resultSet == null) return null;
            while(resultSet.next()) {
                photos.add((new Photo())
                        .setId(resultSet.getInt("photo_id"))
                        .setName(resultSet.getString("photo_name")));
            }
            return photos;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    List<Photo> findAll() {
        return findByCriteria("");
    }

    public Photo findById(int id) {
        String criteria = " photo_id = " +
                String.valueOf(id);
        return findByCriteria(criteria).get(0);
    }

    public Photo findByName(String name) {
        String criteria = " photo_name = '" +
                name + "'";
        return findByCriteria(criteria).get(0);
    }

    public List<Photo> findAllOrderedByName() {
        String criteria = "true ORDER BY photo_name";
        return findByCriteria(criteria);
    }

    public boolean add(Photo photo) {
        String sql = "INSERT INTO photos(photo_id, photo_name) " +
                "VALUES(" + photo.getIdAsString() + ", " +
                photo.getNameAsValue() + ")";
        return change(sql);
    }

    public boolean delete(Photo photo) {
        String sql = "DELETE FROM photos WHERE photo_id = " + photo.getIdAsString();
        return change(sql);
    }

    public boolean delete(String name) {
        return change("DELETE FROM photos WHERE photo_name = " +
                "'" + name + "'");
    }

    public boolean update(Photo photo) {
        String sql = "UPDATE photos SET photo_name = " + photo.getNameAsValue() +
                " WHERE photo_id = " + photo.getIdAsString();
        return change(sql);
    }



}
