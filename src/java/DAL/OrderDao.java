/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Account;
import Model.Card;
import Model.Item;
import Model.Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;

/**
 *
 * @author nguye
 */
public class OrderDao {

    private ArrayList<Order> od;
    private Connection con;
    public OrderDao() {
         try {
            con = new DBcontext().getConnection();
            String status = "ket noi thanh cong";
        } catch (Exception e) {
            String status = e.getMessage();
        }
    }

    public ArrayList<Order> getOd() {
        return od;
    }

    public void setOd(ArrayList<Order> od) {
        this.od = od;
    }
    
    public void loadorder(){
        String sql = "";
        try {
            
        } catch (Exception e) {
        }
    }
    
    public void addOrder(Account account, Card card , int status){
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        
        try {
            String sql = "insert into Order_HE161098 (Account_id,Order_date,Order_id,[Status],Total_price) "
                    + "values(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, account.getAccount_id());
            ps.setString(2, date);
            ps.setInt(3, getorderid());
            ps.setInt(4, status);
            ps.setInt(5, card.getTotalmoney());
            ps.executeUpdate();
            String sql2="select top(1) od.Order_id from Order_HE161098 od order by od.Order_id desc";
            PreparedStatement ps2 = con.prepareStatement(sql);
            ResultSet rs = ps2.executeQuery();
            if(rs.next()){
                int oid = rs.getInt(1);
                for (Item i : card.getItems()) {
                    String sql3="insert into Order_detail_HE161098 values(?,?,?)";
                    PreparedStatement ps3 = con.prepareStatement(sql3);
                    ps3.setInt(1, i.getProduct().getProduct_id());
                    ps3.setInt(2, oid);
                    ps3.setInt(3, i.getQuantity());
                    ps3.executeUpdate();
                }
            }
        } catch (Exception e) {
        }
    }
    
    public int getorderid(){
        int orderId=0;
        String sql = "select top(1) od.Order_id from Order_HE161098 od order by od.Order_id desc";
         try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                orderId = rs.getInt(1)+1;
            }
        } catch (Exception e) {
        }
         return orderId;
    }
    
    public ArrayList<Order> getallorder(int id){
        ArrayList<Order> od = new ArrayList<>();
        
        String sql = "select * from Order_HE161098 where Account_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                od.add(new Order(rs.getInt(1),rs.getDate(2), rs.getInt(4), rs.getInt(5)));
                return od;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public static void main(String[] args) {
        OrderDao od = new OrderDao();
        for (Order o : od.getallorder(3)) {
            System.out.println(o);
        }
    }
}
