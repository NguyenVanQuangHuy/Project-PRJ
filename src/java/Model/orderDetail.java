/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nguye
 */
public class orderDetail {
    private  int Product_id;
    private int Order_id;
    private int number_ticket;

    public orderDetail() {
    }

    public orderDetail(int Product_id, int Order_id, int number_ticket) {
        this.Product_id = Product_id;
        this.Order_id = Order_id;
        this.number_ticket = number_ticket;
    }

    public int getProduct_id() {
        return Product_id;
    }

    public void setProduct_id(int Product_id) {
        this.Product_id = Product_id;
    }

    public int getOrder_id() {
        return Order_id;
    }

    public void setOrder_id(int Order_id) {
        this.Order_id = Order_id;
    }

    public int getNumber_ticket() {
        return number_ticket;
    }

    public void setNumber_ticket(int number_ticket) {
        this.number_ticket = number_ticket;
    }
     
}
