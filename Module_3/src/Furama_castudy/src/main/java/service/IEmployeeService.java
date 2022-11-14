package service;

import model.Employee;

import java.util.List;

public interface IEmployeeService {

    List<Employee> selectAll();

    void addEmployee(Employee employee);

    boolean deleteEmployee(int id);

    Employee findById(int id);
}
