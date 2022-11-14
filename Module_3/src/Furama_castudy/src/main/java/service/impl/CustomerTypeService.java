package service.impl;

import model.customer.CustomerType;
import repository.CustomerTypeRepository;
import repository.icustomer.ICustomerTypeRepository;
import service.ICustomerTypeService;

import java.util.List;

public class CustomerTypeService implements ICustomerTypeService {
    private ICustomerTypeRepository icustomerTypeRepository = new CustomerTypeRepository();
    @Override
    public List<CustomerType> getList() {
        return icustomerTypeRepository.selecAll();
    }
}

