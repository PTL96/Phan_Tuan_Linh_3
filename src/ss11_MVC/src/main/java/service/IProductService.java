package service;

import model.Product;
import java.util.List;

public interface IProductService {
    List<Product> finAll();

    void add(Product product);

    void edit(int id, Product product);

    Product findById(int id);

    void delete(int id);

    List<Product> search(String name);
    Product findByName(String name);

    void remove(int id);

    List<Product> findAll();

    Product searchProduct(String name);
}