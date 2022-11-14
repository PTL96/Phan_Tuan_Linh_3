package repository.impl;


import model.MotelRoom;
import repository.BaseRepository;
import repository.IMotelRoomRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MotelRoomRepository implements IMotelRoomRepository {
    private static final String INSERT_SQL = "INSERT INTO cho_thue (name, phoneNumber, ngayBatDau, thanhToanId) VALUES (?, ?, ?, ?);";
    private static final String SELECT_ALL_SQL = "SELECT * FROM cho_thue;";
    private static final String DELETE_SQL = "DELETE FROM cho_thue WHERE id = ?;";
    private static final String UPDATE_SQL = "UPDATE cho_thue SET name = ? ,phoneNumber = ?, ngayBatDau = ?, thanhToanId = ?, WHERE id = ?;";
    private static final String SELECT_BY_ID = "SELECT * FROM cho_thue WHERE id = ?";
    private static final String SEARCH_BY_NAME = "SELECT * FROM cho_thue WHERE name LIKE ?;";

    @Override
    public List<MotelRoom> findAllRoom() {
        List<MotelRoom> motelRoomList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
           PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SQL);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String id = resultSet.getString("id");
                String name = resultSet.getString("name");
                String phoneNumber = resultSet.getString("phoneNumber");
                String startDay = resultSet.getString("ngayBatDau");
                String payId = resultSet.getString("thanhToanId");
                String typePay;
                switch (payId) {
                    case "1":
                        typePay = "Năm";
                        break;
                    case "2":
                        typePay = "Quý";
                        break;
                    default:
                        typePay = "Tháng";
                        break;
                }
                 motelRoomList.add( new MotelRoom(id, name, phoneNumber, startDay, typePay));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return motelRoomList;
    }

    @Override
    public boolean addNew(MotelRoom motelRoom) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SQL);
            preparedStatement.setString(1, motelRoom.getName());
            preparedStatement.setString(2, motelRoom.getPhoneNumber());
            preparedStatement.setString(3, motelRoom.getStartDay());
            int payId;
            switch (motelRoom.getPayId()) {
                case "Năm":
                    payId = 1;
                    break;
                case "Quý":
                    payId = 2;
                    break;
                case "Tháng":
                    payId = 3;
                    break;
                default:
                    payId = 4;
                    break;
            }
            preparedStatement.setInt(4,payId);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean remove(int id) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(DELETE_SQL);
            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean edit(int id, MotelRoom motelRoom) {
        Connection connection = BaseRepository.getConnectDB();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(UPDATE_SQL);
            preparedStatement.setString(1, motelRoom.getName());
            preparedStatement.setString(2, motelRoom.getPhoneNumber());
            preparedStatement.setString(3, motelRoom.getStartDay());
            int payId;
            switch (motelRoom.getPayId()) {
                case "Năm":
                    payId = 1;
                    break;
                case "Quý":
                    payId = 2;
                    break;
                case "Tháng":
                    payId = 3;
                    break;
                default:
                    payId = 4;
                    break;
            }
            preparedStatement.setInt(4,payId);

            preparedStatement.setInt(5, motelRoom.getIdRoom());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public MotelRoom findByID(int id) {
        MotelRoom motelRoom = null;
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String phoneNumber = resultSet.getString("phoneNumber");
                String startDay = resultSet.getString("ngayBatDau");
                String payId = resultSet.getString("thanhToanId");
                String typePay;
                switch (payId) {
                    case "1":
                        typePay = "Năm";
                        break;
                    case "2":
                        typePay = "Quý";
                        break;
                    default:
                        typePay = "Tháng";
                        break;
                }
                motelRoom = new MotelRoom(id, name, phoneNumber, startDay, typePay);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return motelRoom;
    }


    @Override
    public List<MotelRoom> searchByName(String name) {
        List<MotelRoom> motelRoomsList = new ArrayList<>();

        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_BY_NAME);
            preparedStatement.setString(1, name);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name1 = resultSet.getString("name");
                String phoneNumber = resultSet.getString("phoneNumber");
                String startDay = resultSet.getString("ngayBatDau");
                String payId = resultSet.getString("thanhToanId");
                String typePay;
                switch (payId){
                    case "1":
                        typePay = "Năm";
                        break;
                    case "2":
                        typePay = "Quý";
                        break;
                    default:
                        typePay = "Tháng";
                        break;
                }

                motelRoomsList.add(new MotelRoom(id, name1, phoneNumber, startDay, typePay));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return motelRoomsList;
    }

}
