package pe.pageadventures.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by LuisGamarra on 15/06/2017.
 */
public class PlacesEntity extends BaseEntity{

    public PlacesEntity(Connection connection) {super(connection,"places");}

    public PlacesEntity(){ super(); }

    List<Place> findAll() {
        return findByCriteria("");
    }

    public Place findById(int id) {
        String criteria = " place_id = " +
                String.valueOf(id);
        return findByCriteria(criteria).get(0);
    }

    public Place findByName(String name) {
        String criteria = " place_name = '" +
                name + "'";
        return findByCriteria(criteria).get(0);
    }

    public List<Place> findAllOrderedByName() {
        String criteria = "true ORDER BY place_name";
        return findByCriteria(criteria);
    }


    public List<Place> findByCriteria(String criteria) {
        String sql = getDefaultQuery() +
                criteria == "" ? "" : " WHERE " + criteria;
        List<Place> places = new ArrayList<>();
        try {
            ResultSet resultSet = getConnection()
                    .createStatement()
                    .executeQuery(sql);
            if(resultSet == null) return null;
            while(resultSet.next()) {
                places.add((new Place())
                        .setId(resultSet.getInt("place_id"))
                        .setName(resultSet.getString("place_name"))
                        .setDescription(resultSet.getString("description"))
                        .setDepartment(resultSet.getString("department"))
                        .setPhoto(resultSet.getString("photo")));
            }
            return places;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    public boolean add(Place place) {
        String sql = "INSERT INTO places(place_id, place_name, description, department, photo) " +
                "VALUES(" + place.getId() + ", " +
                place.getName() + ", " +
                place.getDescription() + ", " +
                place.getDepartment() + ", " +
                place.getPhoto() +  ")";

       // String sql1 = "INSERT INTO places(place_id, place_name, description, department, photo) VALUES ( "+place.getId()+","+place.getName()+" )";
              //  "VALUES(" + place.getId() + ", " +
        return change(sql);
    }

    public boolean delete(Place place) {
        String sql = "DELETE FROM places WHERE place_id = " + place.getId();
        return change(sql);
    }

    public boolean delete(String name) {
        return change("DELETE FROM places WHERE place_name = " +
                "'" + name + "'");
    }

    public boolean update(Place place) {
        String sql = "UPDATE places SET place_name = " + place.getName() + ", " +
                    "description = " + place.getDescription() + ", " +
                    "department = " + place.getDepartment() + ", " +
                    "photo = " + place.getPhoto() +
                " WHERE place_id = " + place.getId();
        return change(sql);
    }

}



