package repository.impl;

import model.customer.Customer;
import repository.DataBaseRepository;
import repository.icustomer.ICustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
   List<Customer> customerList = new ArrayList<>();
    public static final String SELECT_ALL = "select * from customer";
    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO customer (customer_type_id,name,day_of_birth,gender,id_card,phone_number, email,address) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
    private static final String DELETE_CUSTOMER_SQL = "delete from customer where id = ?;";
    private static final String UPDATE_CUSTOMER_SQL = "update customer set customer_type_id =?,name= ?,day_of_birth=?,gender=?,id_card=?,phone_number=?, email=?,address=? where id = ?;";
    private static final String SEARCH_NAME_CUSTOMER = "select * from customer where name like ?";
    private static final String FIND_ID = "SELECT * FROM customer WHERE id = ?;";
    @Override
    public List<Customer> selectAll() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = DataBaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = null;
            try {
                preparedStatement = connection.prepareStatement(SELECT_ALL);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String nameCustomer = rs.getString("customer_type_id");
                String name = rs.getString("name");
                String dateOfBirth = rs.getString("day_of_birth");
                String gender = rs.getString("gender");
                String genderName;
                switch (gender){
                    case "1":
                        genderName = "Nam";
                        break;
                    case "0":
                        genderName = "Nữ";
                        break;
                    default:
                        genderName = "Khác";
                        break;
                }
                String idCard = rs.getString("id_card");
                String phoneNumber = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                customerList.add(new Customer(id,nameCustomer,name,dateOfBirth,genderName,idCard, phoneNumber,email,address));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerList;
    }

    @Override
    public void addCustomer(Customer customer) {
        Connection connection = DataBaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER_SQL);
            preparedStatement.setInt(1, customer.getTypeId());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setString(3, customer.getDayOfBirth());
            int gender;
            switch (customer.getGender()){
                case "Nam":
                    gender = 1;
                    break;
                default:
                    gender= 0;
                    break;

            }
            preparedStatement.setInt(4,gender);
            preparedStatement.setString(5, customer.getIdCard());
            preparedStatement.setString(6, customer.getPhoneNumber());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    public boolean updateCustomer(int id, Customer customer) {
        Connection connection = DataBaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CUSTOMER_SQL);
            preparedStatement.setInt(1,(customer.getTypeId()));
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setString(3, customer.getDayOfBirth());
            int gender;
            switch (customer.getGender()) {
                case "Nam":
                    gender = 1;
                    break;
                case "Nữ":
                    gender = 0;
                    break;
                default:
                    gender = 2;
                    break;
            }
            preparedStatement.setInt(4,gender);
            preparedStatement.setString(5, customer.getIdCard());
            preparedStatement.setString(6, customer.getPhoneNumber());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            preparedStatement.setInt(9, id);

            System.out.println(preparedStatement);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }


    @Override
    public boolean deleteCustomer(int id) {
        boolean deleteCustomer = false;
        Connection connection = DataBaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CUSTOMER_SQL);
            preparedStatement.setInt(1,id);
            deleteCustomer = preparedStatement.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return deleteCustomer;
    }
    @Override
    public Customer findById(int id) {
        Customer customer = null;
        Connection connection = DataBaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String nameCustomer = resultSet.getString("customer_type_id");
                String name = resultSet.getString("name");
                String birthday = resultSet.getString("day_of_birth");
                String gender = resultSet.getString("gender");
                String genderName;
                switch (gender) {
                    case "1":
                        genderName = "Nam";
                        break;
                    case "0":
                        genderName = "Nữ";
                        break;
                    default:
                        genderName = "Khác";
                        break;
                }
                String idCard = resultSet.getString("id_card");
                String phoneNumber = resultSet.getString("phone_number");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                customer = new Customer(id, nameCustomer, name, birthday, genderName, idCard, phoneNumber, email, address);


            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customer;
    }
    @Override
    public List<Customer> searchCustomer(String name) {
        List<Customer> customerSearch =new ArrayList<>();
        Connection connection = DataBaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(SEARCH_NAME_CUSTOMER);
            ps.setString(1,"%" + name + "%");
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String nameCustomer = resultSet.getString("customer_type_id");
                String nameSearh = resultSet.getString("name");
                String dateOfBirth = resultSet.getString("day_of_birth");
                String gender = resultSet.getString("gender");
                String genderName;
                switch (gender) {
                    case "1":
                        genderName = "Nam";
                        break;
                    case "0":
                        genderName = "Nữ";
                        break;
                    default:
                        genderName = "Khác";
                        break;
                }
                String idCard = resultSet.getString("id_card");
                String phoneNumber = resultSet.getString("phone_number");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                customerSearch.add(new Customer(id,nameCustomer,nameSearh,dateOfBirth,genderName,idCard,
                        phoneNumber,email,address));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerSearch;
    }
}
