/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author nguye
 */
public class accountDao extends DBcontext{

    private Connection con;
    public accountDao() {
         try {
            con = new DBcontext().getConnection();
            String status = "ket noi thanh cong";
        } catch (Exception e) {
            String status = e.getMessage();
        }
    }
    

    public Account getAccount(String name, String pass) {
    String sql ="select * from Account_HE161098 ac where ac.[Name] = ? and ac.passworld = ?";
        try {
             PreparedStatement ps = con.prepareStatement(sql);
             ps.setString(1, name);
             ps.setString(2, pass);
             ResultSet rs = ps.executeQuery();
             if(rs.next()){
                 return new Account(rs.getInt(1), 
                         rs.getString(2), 
                         rs.getString(3), 
                         rs.getString(4), 
                         rs.getString(5), 
                         rs.getString(6), 
                         rs.getInt(7));
             }
        } catch (Exception e) {
        }
        return null;
    }
    public Account getAccountbyid(int id){
        Account account = new Account();
        String sql ="select * from Account_HE161098 ac where ac.Account_id =?";
        try {
          PreparedStatement ps = con.prepareStatement(sql);
          ps.setInt(1, id);
          ResultSet rs = ps.executeQuery();
          if(rs.next()){
              return new Account(rs.getInt(1), 
                         rs.getString(2), 
                         rs.getString(3), 
                         rs.getString(4), 
                         rs.getString(5), 
                         rs.getString(6), 
                         rs.getInt(7));
          }
        } catch (Exception e) {
        }
        return null;
    }
    public Account getAccountByMail(String mail) {
        
        try {
            Account user = new Account();
            String sql = "select * from Account_HE161098 where email= ?";
            
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, mail);
            ResultSet rs = ps.executeQuery();
            if(rs.next())
            {
               return new Account(rs.getInt(1), 
                         rs.getString(2), 
                         rs.getString(3), 
                         rs.getString(4), 
                         rs.getString(5), 
                         rs.getString(6), 
                         rs.getInt(7));
            }
        } catch (Exception ex) {
            
        }
        return null;
    }
    
}
