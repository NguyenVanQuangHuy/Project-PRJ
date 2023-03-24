/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nguye
 */
public class Card {
    private List<Item> items;

    public Card() {
        items = new ArrayList<>();
    }

    public Card(List<Item> items) {
        this.items = items;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
    
    private Item getItemByid(int id){
        for (Item e : items) {
            if(e.getProduct().getProduct_id() == id){
                return e;
            }
        }
        return null;
    }
    public int getQuantitybyId(int id){
        return getItemByid(id).getQuantity();
    }
    public void addItem(Item item){
        if(getItemByid(item.getProduct().getProduct_id())!=null){
            Item i = getItemByid(item.getProduct().getProduct_id());
            i.setQuantity(i.getQuantity()+item.getQuantity());
            
        }
        else{
            items.add(item);
        }
    }
    
    public void removeItem(int id){
        if(getItemByid(id)!=null){
            items.remove(getItemByid(id));
        }
    }
    public int getTotalmoney(){
        int t = 0;
        for (Item item : items) {
            t+=item.getQuantity()* item.getProduct().getPrice();
        }
        return t;
    }
  
}
