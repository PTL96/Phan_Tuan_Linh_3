package service;

import model.Customer;

import java.util.List;

public interface ICustomerService {
    boolean updateCustomer(Customer customer);

    void addCustomer(Customer customer);

    List<Customer> selectAll();

    List<Customer> searchCustomer(String name);

    boolean deleteCustomer(int id);

    Customer findById(int id);
}
