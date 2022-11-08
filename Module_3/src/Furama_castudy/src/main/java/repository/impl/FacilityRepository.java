package repository.impl;

import model.Facility;
import repository.IFacilityRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepository implements IFacilityRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/furama";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Ptl451996";

    private static final String INSERT_USERS_SQL = "insert into facility (name, area, cost max_people, rent_type_id, facility_type_id, standard_room, description_other_convenience, pool_area, number_of_floors, facility_free) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
    private static final String SELECT_USER_BY_ID = "select id, name, area, cost, max_people, rent_type_id, facility_type_id, standard_room, description_other_convenience, pool_area, number_of_floors, facility_free from facility where id =?";
    private static final String SELECT_ALL_USERS = "select * from facility";
    private static final String DELETE_USERS_SQL = "delete from facility where id = ?;";
    private static final String UPDATE_USERS_SQL = "update facility set name = ?,cost = ?, max_people = ?, rent_type_id = ?, facility_type_id = ?, standard_room = ?, description_other_convenience = ?, pool_area = ?, number_of_floors = ?, facility_free = ? where id = ?;";

    public FacilityRepository() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }


    @Override
    public void insertFacility(Facility facility) throws SQLException {
        System.out.println(INSERT_USERS_SQL);
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, facility.getName());
            preparedStatement.setInt(2, facility.getArea());
            preparedStatement.setDouble(3, facility.getCost());
            preparedStatement.setInt(4, facility.getMaxPeople());
            preparedStatement.setInt(5, facility.getRendTypeId());
            preparedStatement.setInt(6, facility.getFacilityTypeId());
            preparedStatement.setString(7, facility.getStandardRoom());
            preparedStatement.setString(8, facility.getDescriptionOther());
            preparedStatement.setDouble(9, facility.getPoolArea());
            preparedStatement.setInt(10, facility.getNumberOfFloors());
            preparedStatement.setString(11, facility.getFacilityFree());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }


    @Override
    public Facility selectFacility(int id) {
        Facility facility = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                int area = rs.getInt("area");
                double cost = rs.getDouble("cost");
                int maxPeople = rs.getInt("max_people");
                int rendTypeId = rs.getInt("rend_type_id");
                int facilityTypeId = rs.getInt("facility_type_id");
                String standardRoom = rs.getString("standard_room");
                String descriptionOther = rs.getString("description_other_convenience");
                double poolArea = rs.getDouble("pool_area");
                int numberOfFloors = rs.getInt("number_of_floors");
                String facilityFree = rs.getString("facility_free");
                facility = new Facility(id, name, area, cost, maxPeople, rendTypeId, facilityTypeId, standardRoom, descriptionOther, poolArea, numberOfFloors, facilityFree);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return facility;
    }


    @Override
    public List<Facility> selectAllFacility() {
        List<Facility> facilitys = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int area = rs.getInt("area");
                double cost = rs.getDouble("cost");
                int maxPeople = rs.getInt("max_people");
                int rendTypeId = rs.getInt("rent_type_id");
                int facilityTypeId = rs.getInt("facility_type_id");
                String standardRoom = rs.getString("standard_room");
                String descriptionOther = rs.getString("description_other_convenience");
                double poolArea = rs.getDouble("pool_area");
                int numberOfFloors = rs.getInt("number_of_floors");
                String facilityFree = rs.getString("facility_free");
                facilitys.add(new Facility(id, name, area, cost, maxPeople, rendTypeId, facilityTypeId, standardRoom, descriptionOther, poolArea, numberOfFloors, facilityFree));

            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return facilitys;
    }

    @Override
    public boolean deleteFacility(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    @Override
    public boolean updateFacility(Facility facility) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
            statement.setString(1, facility.getName());
            statement.setInt(2, facility.getArea());
            statement.setDouble(3, facility.getCost());
            statement.setInt(4, facility.getMaxPeople());
            statement.setInt(5, facility.getRendTypeId());
            statement.setInt(6, facility.getFacilityTypeId());
            statement.setString(7, facility.getStandardRoom());
            statement.setString(8, facility.getDescriptionOther());
            statement.setDouble(9, facility.getPoolArea());
            statement.setInt(10, facility.getNumberOfFloors());
            statement.setString(11, facility.getFacilityFree());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;

    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
