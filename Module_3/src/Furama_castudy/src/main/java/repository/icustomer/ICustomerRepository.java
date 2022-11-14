package repository.icustomer;

import model.customer.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> selectAll();

    void addCustomer(Customer customer);

    boolean updateCustomer(int id, Customer customer);

    boolean deleteCustomer(int id);

    Customer findById(int id);

    List<Customer> searchCustomer(String name);

}
