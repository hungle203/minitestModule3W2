package service;

import model.Product;

import java.util.ArrayList;

public class ProductService {
    private static final ArrayList<Product> products;

    static {
        products = new ArrayList<>();
        products.add(new Product(1,"phone",1000000,10,"cheap"));
        products.add(new Product(2,"laptop",2000000,30,"expensive"));
        products.add(new Product(3,"tablet",300000,20,"expensive"));
        products.add(new Product(4,"vegetable",200,40,"cheap"));
        products.add(new Product(5,"glasses",300.000,39,"cheap"));
        products.add(new Product(6,"trousers",30.000,30,"cheap"));
    }

    public ArrayList<Product> getProductsList() {
        return products;
    }
    public Product getProduct(int id) {
        for (Product product: products) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }

    public void createProduct(Product product) {
        products.add(product);
    }

    public void editProduct(int id, Product product) {
        products.set(id,product);
    }

    public void deleteProduct(Product product) {
        products.remove(products);
    }

    public void payment() {
        for (Product product: products) {

        }
    }

    public ArrayList<Product> sortByPrice() {
        products.sort((o1, o2) -> (int) (o1.getPrice()-o2.getPrice()));
        return products;
    }

    public ArrayList<Product> sortPriceAscending() {
        products.sort((o1, o2) -> (int) (o2.getPrice()-o1.getPrice()));
        return products;
    }

}
