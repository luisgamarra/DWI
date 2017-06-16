package Models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ErickRojas on 15/06/2017.
 */
public class VideosEntity extends BaseEntity{


    public VideosEntity(Connection connection){
        super(connection, "Videos");
    }

    public VideosEntity(){

    }

    public List<Video> findByCriteria(String criteria) {
        String sql = getDefaultQuery() +
                criteria == "" ? "" : " WHERE " + criteria;
        List<Video> videos = new ArrayList<>();
        try {
            ResultSet resultSet = getConnection().createStatement().executeQuery(sql);
            if(resultSet == null) return null;
            while(resultSet.next()) {
                videos.add((new Video())
                        .setId(resultSet.getInt("video_id"))
                        .setName(resultSet.getString("video_name")));
            }
            return videos;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    List<Video> findAll() {
        return findByCriteria("");
    }

    public Video findById(int id) {
        String criteria = " video_id = " +
                String.valueOf(id);
        return findByCriteria(criteria).get(0);
    }

    public Video findByName(String name) {
        String criteria = " video_name = '" +
                name + "'";
        return findByCriteria(criteria).get(0);
    }

    public List<Video> findAllOrderedByName() {
        String criteria = "true ORDER BY video_name";
        return findByCriteria(criteria);
    }

    public boolean add(Video video) {
        String sql = "INSERT INTO videos(video_id, video_name) " +
                "VALUES(" + video.getIdAsString() + ", " +
                video.getNameAsValue() + ")";
        return change(sql);
    }

    public boolean delete(Video video) {
        String sql = "DELETE FROM videos WHERE video_id = " + video.getIdAsString();
        return change(sql);
    }

    public boolean delete(String name) {
        return change("DELETE FROM videos WHERE video_name = " +
                "'" + name + "'");
    }

    public boolean update(Video video) {
        String sql = "UPDATE videos SET video_name = " + video.getNameAsValue() +
                " WHERE video_id = " + video.getIdAsString();
        return change(sql);
    }



}
