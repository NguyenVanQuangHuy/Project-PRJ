/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author nguye
 */
public class Productdao {
     
     Product products = new Product();
     private Connection con;
    public Productdao() {
         try {
            con = new DBcontext().getConnection();
            String status = "ket noi thanh cong";
        } catch (Exception e) {
            String status = e.getMessage();
        }
    }

    public Product getProducts() {
        return products;
    }

    public void setProducts(Product products) {
        this.products = products;
    }

   
    
    
    public void getProductbyId(int id){
        String sql = "select ph.Product_id,ph.Review_product,ph.Price,ph.Product_name,ph.Category_id,ig.url "
                + "from Product_HE161098 ph inner join image2_HE161098 ig on ph.Product_id = ig.Product_id\n" +
                "where ph.Product_id = ? ";
       
        int count = 0;
        try {
             PreparedStatement ps = con.prepareStatement(sql);
             ps.setInt(1, id);
             ResultSet rs = ps.executeQuery();
             
             while(rs.next()){
                 count++;
                 int proid = rs.getInt("Product_id");
                 String reproid = rs.getString("Review_product");
                 int prprice = rs.getInt("Price");
                 String name = rs.getString("Product_name");
                 int prcate = rs.getInt("Category_id");
                 String url = rs.getString("url");
                 if(count%3==0){
                     products = new Product(reproid, proid, prprice, prcate, name, url);
                 }
             }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
