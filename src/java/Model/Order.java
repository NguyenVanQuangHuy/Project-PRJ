/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;
import java.util.List;

/**
 *
 * @author nguye
 */
public class Order {
    private int Order_id;
    private Date Order_date;
    private int Total_price;
    private int status;

    public Order() {
    }

    public Order(int Order_id, Date Order_date, int Total_price, int status) {
        this.Order_id = Order_id;
        this.Order_date = Order_date;
        this.Total_price = Total_price;
        this.status = status;
    }

    public int getOrder_id() {
        return Order_id;
    }

    public void setOrder_id(int Order_id) {
        this.Order_id = Order_id;
    }

    public Date getOrder_date() {
        return Order_date;
    }

    public void setOrder_date(Date Order_date) {
        this.Order_date = Order_date;
    }

    public int getTotal_price() {
        return Total_price;
    }

    public void setTotal_price(int Total_price) {
        this.Total_price = Total_price;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" + "Order_id=" + Order_id + ", Order_date=" + Order_date + ", Total_price=" + Total_price + ", status=" + status + '}';
    }
    
    
    
}
