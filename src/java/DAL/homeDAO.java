/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

/**
 *
 * @author nguye
 */
import Model.Account;
import Model.Category;
import Model.Image;
import Model.Product;
import java.sql.*;
import java.util.*;
public class homeDAO extends DBcontext{
     private Connection con;
     private ArrayList<Category> list_cate ;
     private ArrayList<Product> list_prod;
     private ArrayList<Image> list_image;
     private ArrayList<Account> list_account;
     String status="";

    public ArrayList<Account> getList_account() {
        return list_account;
    }

    public void setList_account(ArrayList<Account> list_account) {
        this.list_account = list_account;
    }

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public ArrayList<Category> getList_cate() {
        return list_cate;
    }

    public void setList_cate(ArrayList<Category> list_cate) {
        this.list_cate = list_cate;
    }

    public ArrayList<Product> getList_prod() {
        return list_prod;
    }

    public void setList_prod(ArrayList<Product> list_prod) {
        this.list_prod = list_prod;
    }

    public ArrayList<Image> getList_image() {
        return list_image;
    }

    public void setList_image(ArrayList<Image> list_image) {
        this.list_image = list_image;
    }

    public homeDAO() {
        try {
            con = new DBcontext().getConnection();
            status = "ket noi thanh cong";
        } catch (Exception e) {
            status = e.getMessage();
        }
    }

    public void load_Category(){
        list_cate = new ArrayList<>();
        String sql = "select * from category_HE161098";
        Category ca = new Category();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int category_id = rs.getInt(1);
                String catefory_name = rs.getString(2);
                ca = new Category(category_id, catefory_name);
                list_cate.add(ca);
            }
        } catch (Exception e) {
            e.getMessage();
        }
    }
    
    public void load_image(){
        list_image = new ArrayList<>();
        String sql = "select * from [image2_HE161098]";
        Image ime = new Image();
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                String url = rs.getString(1);
                int Product_id = rs.getInt(2);
                ime = new Image(url, Product_id);
                list_image.add(ime);
            }
        } catch (Exception e) {
        }
    }
    public void load_product (){
        list_prod = new ArrayList<>();
        String sql = "select pt.Product_id, pt.Review_Product, pt.Price,pt.Category_id,pt.Product_name, "
                + "ie.Url from Product pt inner join [image] ie on (pt.Product_id = ie.Product_id)";
        Product pt = new Product();
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int Product_id = rs.getInt("Product_id");
                String Review = rs.getString("Review_Product");
                int Price = rs.getInt("Price");
                int Category_id = rs.getInt("Category_id");
                String pname = rs.getString("Product_name");
                String url= rs.getString("Url");
                pt = new Product(Review, Product_id, Price, Category_id,pname,url);
                list_prod.add(pt);
            }
        } catch (Exception e) {
            e.getMessage();
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
    
    public void select_Cate(int choice){
        list_prod = new ArrayList<>();
        String sql = "select po.Product_id,po.Review_product,po.Price,po.Product_name,po.Category_id, img.url from Product_HE161098 po inner join image2_HE161098 img on (po.Product_id = img.Product_id)\n" +
        "where po.Category_id=?\n" +
        "order by po.Product_id ";
        Product pt = new Product();
        int count =0;
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1,choice);
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
        }
    }
    
   public void touris (int id){
        list_prod = new ArrayList<>();
        String sql = "select po.Product_id,po.Product_name,po.Price,po.Review_product,po.Category_id,img.url "
                + "from Product_HE161098 po inner join image2_HE161098 img on po.Product_id = img.Product_id\n" +
                "where po.Product_id=?";
        Product pt = new Product();
        
        try {
           PreparedStatement ps = con.prepareStatement(sql);
           ps.setInt(1,id);
           ResultSet rs = ps.executeQuery();
           while(rs.next()){
           
            int Product_id = rs.getInt("Product_id");
            String Review = rs.getString("Review_Product");
            int Price = rs.getInt("Price");
            int Category_id = rs.getInt("Category_id");
            String pname = rs.getString("Product_name");
            String url= rs.getString("Url");
             pt = new Product(Review, Product_id, Price, Category_id,pname,url);
            list_prod.add(pt);
           }
       } catch (Exception e) {
       }
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
   
   
    public static void main(String[] args) {
        homeDAO de = new homeDAO();
        de.load_product2();
        for (Product arg: de.list_prod) {
            System.out.println(arg);
        }
        System.out.println(de.list_prod.size());
    }
}
