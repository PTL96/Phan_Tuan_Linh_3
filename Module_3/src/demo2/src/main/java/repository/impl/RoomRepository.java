package repository.impl;

import model.Room;
import repository.BaseRepository;
import repository.IRoomRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RoomRepository implements IRoomRepository {
    private static final String SELECT_ALL = "select * from chothue;";
    private static final String DELETE = "delete from chothue where id = ?;";
    private static final String ADD = "INSERT INTO chothue (name, phoneNumber, ngayBatDau, thanhToanId) VALUES (?, ?, ?, ?);";
    private static final String SEARCH = "select * from chothue where name like ? or phoneNumber like ?;";
    private static final String FIND_ID = "SELECT * FROM chothue WHERE id = ?;";
    private static final String UPDATE = "update chothue set name =?, phoneNumber =?, ngayBatDau= ?, thanhToanId =?  where id = ?;";
    @Override
    public List<Room> roomAllList() {
        List<Room> roomList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement ps = connection.prepareCall(SELECT_ALL);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                int id = Integer.parseInt(resultSet.getString("id"));
                String name = resultSet.getString("name");
                String phoneNumber = resultSet.getString("phoneNumber");
                String startDay = resultSet.getString("ngayBatDau");
                String pay = resultSet.getString("thanhToanId");
                String payName;
                switch (pay) {
                    case "1":
                        payName = "Tháng";
                        break;
                    case "2":
                        payName = "Quý";
                        break;
                    default:
                        payName = "Năm";
                        break;
                }
                roomList.add(new Room(id, name, phoneNumber, startDay, payName));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return roomList;

    }


    @Override
    public void addRoom(Room room) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD);
            preparedStatement.setString(1, room.getName());
            preparedStatement.setString(2, room.getPhoneNumber());
            preparedStatement.setString(3, room.getStartDay());
            int payType;
            switch (room.getPayId()) {
                case "Tháng":
                    payType = 1;
                    break;
                case "Quý":
                    payType = 2;
                    break;
                default:
                    payType = 3;
                    break;
            }
            preparedStatement.setString(4, String.valueOf(payType));

            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }


    @Override
    public boolean deleteRoom(int id) {
        boolean deleteRoom = false;
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1, id);
            deleteRoom = preparedStatement.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return deleteRoom;
    }
    @Override
    public Room findByID(int id) {
        Room room = null;
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ID);
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
                room = new Room(id, name, phoneNumber, startDay, typePay);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return room;
    }
//
//
    @Override
    public List<Room> search(String name) {
        List<Room> roomList = new ArrayList<>();

        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH);
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

                roomList.add(new Room(id, name1, phoneNumber, startDay, typePay));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return roomList;
    }


    @Override
    public boolean edit(Room room) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setString(1, room.getName());
            preparedStatement.setString(2, room.getPhoneNumber());
            preparedStatement.setString(3, room.getStartDay());
            int payType;
            switch (room.getPayId()) {
                case "Tháng":
                    payType = 1;
                    break;
                case "Quý":
                    payType = 2;
                    break;
                default:
                    payType = 3;
                    break;
            }
            preparedStatement.setString(4, String.valueOf(payType));
            preparedStatement.setInt(5, room.getId());
            System.out.println(preparedStatement);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }
}
