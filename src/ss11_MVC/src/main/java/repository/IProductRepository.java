package repository;

import model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product>findAll();
    void add(Product product);
    void edit(int id, Product product);
    Product findById(int id);
    void delete(int id);
    List<Product> search(String name);
    Product findByName(String name);
}