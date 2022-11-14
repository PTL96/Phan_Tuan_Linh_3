package service;

import model.customer.Customer;

import java.util.List;

public interface ICustomerService {

    void addCustomer(Customer customer);

    List<Customer> selectAll();

    List<Customer> searchCustomer(String name);

    boolean deleteCustomer(int id);

    Customer findById(int id);

    boolean updateCustomer(int id, Customer customer);
}
