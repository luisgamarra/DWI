package Models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ErickRojas on 30/06/2017.
 */
public class MediaContentsEntity extends BaseEntity {


    public MediaContentsEntity(Connection connection){
        super(connection, "media_content");
    }

    public MediaContentsEntity(){

    }

    public List<MediaContent> findByCriteria(String criteria) {
        String sql = getDefaultQuery() +
                criteria == "" ? "" : " WHERE " + criteria;
        List<MediaContent> mediacontents = new ArrayList<>();
        try {
            ResultSet resultSet = getConnection().createStatement().executeQuery(sql);
            if(resultSet == null) return null;
            while(resultSet.next()) {
                mediacontents.add((new MediaContent())
                        .setId(resultSet.getInt("id"))
                        .setName(resultSet.getString("name"))
                        .setUrl(resultSet.getString("url")));
            }
            return mediacontents;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    List<MediaContent> findAll() {
        return findByCriteria("");
    }



    
    public MediaContent findById(int id) {
        String criteria = " video_id = " +
                String.valueOf(id);
        return findByCriteria(criteria).get(0);
    }

    public MediaContent findByName(String name) {
        String criteria = " name = '" +
                name + "'";
        return findByCriteria(criteria).get(0);
    }

    public MediaContent findByUrl(String url) {
        String criteria = " url = '" +
                url + "'";
        return findByCriteria(criteria).get(0);
    }

    public List<MediaContent> findAllOrderedByName() {
        String criteria = "true ORDER BY name";
        return findByCriteria(criteria);
    }

    public boolean add(MediaContent mediaContent) {
        String sql = "INSERT INTO media_content(id, name,url) " +
                "VALUES(" + mediaContent.getIdAsString() + ", " +
                mediaContent.getNameAsValue() + ", " + mediaContent.getUrl()+")";
        return change(sql);
    }

    public boolean delete(MediaContent mediaContent) {
        String sql = "DELETE FROM media_content WHERE id = " + mediaContent.getIdAsString();
        return change(sql);
    }

    public boolean delete(String name) {
        return change("DELETE FROM media_content WHERE name = " +
                "'" + name + "'");
    }

    public boolean update(MediaContent mediaContent) {
        String sql = "UPDATE media_content SET name = " + mediaContent.getNameAsValue() + "url = "+ mediaContent.getUrl()+
                " WHERE id = " + mediaContent.getIdAsString();
        return change(sql);
    }


}
