package repository;

import model.Employee;

import java.util.List;

public interface IEmployeeRepository {
    List<Employee> selectAll();

    void addEmployee(Employee employee);

    boolean deleteEmployee(int id);

    Employee findById(int id);
}
