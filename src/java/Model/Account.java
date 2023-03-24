/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nguye
 */
public class Account {
    private int account_id;
    private String name;
    private String passworld;
    private String email;
    private String gender;
    private String phone;
    private int role_id;

    public Account() {
    }

    public Account(int account_id, String name, String passworld, String email, String gender, String phone, int role_id) {
        this.account_id = account_id;
        this.name = name;
        this.passworld = passworld;
        this.email = email;
        this.gender = gender;
        this.phone = phone;
        this.role_id = role_id;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassworld() {
        return passworld;
    }

    public void setPassworld(String passworld) {
        this.passworld = passworld;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    @Override
    public String toString() {
        return "Account{" + "account_id=" + account_id + ", name=" + name + ", passworld=" + passworld + ", email=" + email + ", gender=" + gender + ", phone=" + phone + ", role_id=" + role_id + '}';
    }

    

    





    
 

   
    
 }
