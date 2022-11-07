package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static List<Product> productList = new ArrayList<>();
    static {
        productList.add(new Product(123,"Iphone 12", 12000000,"còn hàng","Apple"));
        productList.add(new Product(124,"Iphone 12 ProMax", 12000000,"còn hàng","Apple"));
        productList.add(new Product(125,"Iphone 13", 12000000,"hết hàng","Apple"));
        productList.add(new Product(126,"Iphone 13 ProMax", 12000000,"còn hàng","Apple"));
        productList.add(new Product(127,"Iphone 14", 12000000,"hết hàng","Apple"));
        productList.add(new Product(128,"Iphone 14 ProMax", 12000000,"còn hàng","Apple"));
    }

    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void add(Product product) {
        productList.add(product);

    }

    @Override
    public void edit(int id, Product product) {

    }

    @Override
    public Product findById(int id) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId() == id)
                return productList.get(i);
        }
        return null;
    }

    @Override
    public void delete(int id) {
        productList.remove(id);
    }

    @Override
    public List<Product> search(String name) {
        return productList;
    }

    @Override
    public Product findByName(String name) {
        return null;
    }
}
