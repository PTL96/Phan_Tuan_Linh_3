package service.impl;

import model.Employee;
import repository.IEmployeeRepository;
import repository.impl.EmployeeRepository;
import service.IEmployeeService;

import java.util.List;

public class EmployeeService implements IEmployeeService {
    IEmployeeRepository iEmployeeRepository = new EmployeeRepository();

    @Override
    public List<Employee> selectAll() {
        return iEmployeeRepository.selectAll();
    }

    @Override
    public void addEmployee(Employee employee) {
        iEmployeeRepository.addEmployee(employee);
    }

    @Override
    public boolean deleteEmployee(int id) {
        return iEmployeeRepository.deleteEmployee(id);
    }

    @Override
    public Employee findById(int id) {
        return iEmployeeRepository.findById(id);
    }
}
