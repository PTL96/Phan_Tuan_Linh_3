package service.impl;

import model.Customer;
import repository.ICustomerRepository;
import repository.impl.CustomerRepository;
import service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    ICustomerRepository iCustomerRepository = new CustomerRepository();

    @Override
    public boolean updateCustomer(Customer customer) {
        iCustomerRepository.updateCustomer(customer);
        return false;
    }

    @Override
    public void addCustomer(Customer customer) {
        iCustomerRepository.addCustomer(customer);
    }

    @Override
    public List<Customer> selectAll() {
        return iCustomerRepository.selectAll();
    }

    @Override
    public List<Customer> searchCustomer(String name) {
        return iCustomerRepository.searchCustomer(name);
    }

    @Override
    public boolean deleteCustomer(int id) {
        return iCustomerRepository.deleteCustomer(id);
    }
    @Override
    public Customer findById(int id) {
        return iCustomerRepository.findById(id);
    }

}
