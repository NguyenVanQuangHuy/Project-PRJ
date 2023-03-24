/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nguye
 */
public class Category {
    private int category_id;
    private String name;

    public Category() {
    }

    public Category(int Category_id, String Category_name) {
        this.category_id = Category_id;
        this.name = Category_name;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int Category_id) {
        this.category_id = Category_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

   
    
    
    
}
