/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Account;
import Model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.*;
import java.util.*;

/**
 *
 * @author nguye
 */
public class adminDao extends DBcontext {
    private ArrayList<Account> list_account;
    private ArrayList<Product> list_prod;
    private Connection con;

    public adminDao() {
        try {
            con = new DBcontext().getConnection();
            String status = "ket noi thanh cong";
        } catch (Exception e) {
            String status = e.getMessage();
        }
    }
    
    public ArrayList<Account> getList_account() {
        return list_account;
    }

    public void setList_account(ArrayList<Account> list_account) {
        this.list_account = list_account;
    }

    public ArrayList<Product> getList_prod() {
        return list_prod;
    }

    public void setList_prod(ArrayList<Product> list_prod) {
        this.list_prod = list_prod;
    }
    
    public void loadAccount(){
       list_account = new ArrayList<>();
       String sql = "select * from Account_HE161098 ac";
       Account ac = new Account();
       
       try {
           PreparedStatement ps = con.prepareStatement(sql);
           ResultSet rs = ps.executeQuery();
           while(rs.next()){
                 int account_id = rs.getInt("Account_id");
                 String name = rs.getString("Name");
                 String passworld = rs.getString("passworld");
                 String email = rs.getString("email");
                 String gender = rs.getString("gender");
                 String phone = rs.getString("phone_number");
                 int role_id = rs.getInt("Role_id");
                 ac = new Account(account_id, name, passworld, email, gender, phone, role_id);
                 list_account.add(ac);
           }
       } catch (Exception e) {
       }
   }
    
    public void load_product2 () {
        list_prod = new ArrayList<>();
        String sql = "select po.Product_id,po.Review_product,po.Price,po.Product_name,po.Category_id, img.url "
                     + "from Product_HE161098 po inner join image2_HE161098 img on (po.Product_id = img.Product_id)\n" +
                       "order by po.Product_id";
        Product pt = new Product();
        int count =0;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                count++;
                int Product_id = rs.getInt("Product_id");
                String Review = rs.getString("Review_Product");
                int Price = rs.getInt("Price");
                int Category_id = rs.getInt("Category_id");
                String pname = rs.getString("Product_name");
                String url= rs.getString("Url");
                 if(count%3==0){
                pt = new Product(Review, Product_id, Price, Category_id,pname,url);
                list_prod.add(pt);
                 }
            }
        } catch (Exception e) {
            e.getMessage();
        }
    }
    
    public void insertProduct(String revew_product, int product_id, int price, int category_id, String productname){
        String sql="INSERT INTO Product_HE161098(Product_id,Review_product,Price,Product_name,Category_id) "
                + "VALUES(?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, product_id);
            ps.setString(2, revew_product);
            ps.setInt(3, price);
            ps.setString(4, productname);
            ps.setInt(5, category_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void insertAccount(int Account_id , String Name,String passworld,String email,String gender,String phone){
        String sql = "INSERT INTO Account_HE161098(Account_id,[Name],passworld,email,gender,Role_id,phone_number) "
                + "Values(?,?,?,?,?,?,?) ";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, Account_id);
            ps.setString(2, Name);
            ps.setString(3, passworld);
            ps.setString(4, email);
            ps.setString(5, gender);
            ps.setInt(6, 1);
            ps.setString(7, phone);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
    public void insertImage(String url,int product_id){
        String sql = "INSERT INTO image2_HE161098(url,Product_id) VALUES(?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, url);
            ps.setInt(2, product_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void updateProduct(String revew_product, int product_id, int price, String productname){
        String sql="UPDATE Product_HE161098 SET Review_product = ?,Price=?,Product_name=? Where Product_id=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, revew_product);
            ps.setInt(2, price);
            ps.setString(3, productname);
            ps.setInt(4, product_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void updateAccount(int account_id, String name, String email, int gender, int phone){
        String sql = "UPDATE Account_HE161098 SET Name=?,email=?,gender=?,phone_number=? Where Account_id=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setInt(3, gender);
            ps.setInt(4, phone);
            ps.setInt(5, account_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void deleteAccount(int id){
        String sql2 = "DElETE from Order_HE161098 where Account_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql2);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        String sql = "DELETE FROM Account_HE161098 WHERE Account_id=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void deleteProduct (int pid){
        String sql1 = "DELETE FROM image2_HE161098 WHERE Product_id=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql1);
            ps.setInt(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        String sql = "DELETE FROM Product_HE161098 WHERE Product_id=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public int getnumberAccount (){
        int number = 0;
        String sql1 = "select top(1) Account_id from Account_HE161098 order by Account_id desc";
        try {
            PreparedStatement ps = con.prepareStatement(sql1);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                number = rs.getInt("Account_id");
            }
        } catch (Exception e) {
        }
        return number+1;
    }
    public void updaterole(int aid){
        String sql = "UPDATE Account_HE161098 SET Role_id = ?  Where Account_id = ?";
        int roleid = 0;
        
        try {
          PreparedStatement ps = con.prepareStatement(sql); 
          ps.setInt(1, roleid);
          ps.setInt(2, aid);
          ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public Product getProductbyid(int id){
        String sql ="select ph.Product_id,ph.Review_product,ph.Price,ph.Product_name,ph.Category_id,ig.url "
                + "from Product_HE161098 ph inner join image2_HE161098 ig on ph.Product_id = ig.Product_id\n" +
                  "where ph.Product_id = ?";
        int count =0;
        Product pt = new Product();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
             while(rs.next()){
                count++;
                int Product_id = rs.getInt("Product_id");
                String Review = rs.getString("Review_Product");
                int Price = rs.getInt("Price");
                int Category_id = rs.getInt("Category_id");
                String pname = rs.getString("Product_name");
                String url= rs.getString("Url");
                if(count%3==0){
                pt = new Product(Review, Product_id, Price, Category_id,pname,url);
                return pt;
                 }
            }
            }catch (Exception e) {
        }
        return null;
    }
    public int getnumberProduct (){
        int numpro = 0;
        String sql1 = "select top(1) Product_id from Product_HE161098  order by Product_id  desc";
        try {
            PreparedStatement ps = con.prepareStatement(sql1);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                numpro = rs.getInt("Product_id");
            }
        } catch (Exception e) {
        }
        return numpro+1;
    }
    
  public static void main(String[] args) {
        adminDao ad = new adminDao();
        ad.updateProduct("huy", 14, 9999, "huy");
    }  
}
  
