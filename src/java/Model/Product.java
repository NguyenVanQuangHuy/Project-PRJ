/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nguye
 */

public class Product {
    private String revew_product;
    private int product_id;
    private int price;
    private int category_id;
    private String productname;
    private String url;
    public Product() {
    }

    public Product(String revew_product, int product_id, int price, int category_id, String productname, String url) {
        this.revew_product = revew_product;
        this.product_id = product_id;
        this.price = price;
        this.category_id = category_id;
        this.productname = productname;
        this.url = url;
    }

    public String getRevew_product() {
        return revew_product;
    }

    public void setRevew_product(String revew_product) {
        this.revew_product = revew_product;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Product{" + "revew_product=" + revew_product + ", product_id=" + product_id + ", price=" + price + ", category_id=" + category_id + ", productname=" + productname + ", url=" + url + '}';
    }


 
   
    
}
