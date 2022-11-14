package repository.impl;


import model.Employee;
import repository.DataBaseRepository;
import repository.IEmployeeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository implements IEmployeeRepository {
    List<Employee> employeeList = new ArrayList<>();
    public static final String DELETE = "delete from employee where id = ?;";
    public static final String SELECT_ALL = "select * from employee";
    private static final String INSERT_EMPLOYEE_SQL = "INSERT INTO employee (name,day_of_birth,id_card,salary,phone_number, email,address,position_id,education_degree_id,division_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
    private static final String FIND_ID = "SELECT * FROM employee WHERE id = ?;";

    @Override
    public List<Employee> selectAll() {
        List<Employee> employeeList = new ArrayList<>();
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
                String name = rs.getString("name");
                String dayOfBirth = rs.getString("day_of_birth");
                String idCard = rs.getString("id_card");
                double salary = rs.getDouble("salary");
                String phoneNumber = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int positionId = rs.getInt("position_id");
                int educationId = rs.getInt("education_degree_id");
                int divisionId = rs.getInt("division_id");
                employeeList.add(new Employee(id,name,dayOfBirth,idCard,salary,phoneNumber,email,address,positionId,educationId,divisionId ));

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employeeList;
    }

    @Override
    public void addEmployee(Employee employee) {
        Connection connection = DataBaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_EMPLOYEE_SQL);
            preparedStatement.setString(1, employee.getName());
            preparedStatement.setString(2, employee.getDayOfBirth());
            preparedStatement.setString(3, employee.getIdCard());
            preparedStatement.setDouble(4, employee.getSalary());
            preparedStatement.setString(5, employee.getPhoneNumber());
            preparedStatement.setString(6, employee.getEmail());
            preparedStatement.setString(7, employee.getAddress());
            preparedStatement.setInt(8, employee.getPositionId());
            preparedStatement.setInt(9, employee.getEducationDegreeId());
            preparedStatement.setInt(10, employee.getDivisionId());

            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    public boolean deleteEmployee(int id) {
        boolean deleteEmployee= false;
        Connection connection = DataBaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1,id);
            deleteEmployee = preparedStatement.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return deleteEmployee;
    }


    @Override
    public Employee findById(int id) {
        Employee employee = null;
        Connection connection = DataBaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String birthday = resultSet.getString("day_of_birth");
                String idCard = resultSet.getString("id_card");
                double salary = Double.parseDouble(resultSet.getString("salary"));
                String phoneNumber = resultSet.getString("phone_number");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                int position = Integer.parseInt(resultSet.getString("position_id"));
                int education = Integer.parseInt(resultSet.getString("education_degree_id"));
               int division = Integer.parseInt(resultSet.getString("division_id"));
                employee = new Employee(id, name, birthday, idCard, salary, phoneNumber, email, address, position, education, division);


            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employee;
    }
}
