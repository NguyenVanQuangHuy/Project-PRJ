/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author nguye
 */
public class Config {
    private int number;
    private int number_record;
    private int page_index;
    private int begin;
    private int end;
    private int totalPage;

    public Config() {
    }

    public Config(int number, int number_record, int page_index){
    this.number = number;
    this.number_record = number_record;
    this.page_index = page_index;
    }   

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getNumber_record() {
        return number_record;
    }

    public void setNumber_record(int number_record) {
        this.number_record = number_record;
    }

    public int getPage_index() {
        return page_index;
    }

    public void setPage_index(int page_index) {
        this.page_index = page_index;
    }

    public int getBegin() {
        return begin;
    }

//    public void setBegin(int begin) {
//        this.begin = begin;
//    }

    public int getEnd() {
        return end;
    }

//    public void setEnd(int end) {
//        this.end = end;
//    }

    public int getTotalPage() {
        return totalPage;
    }

//    public void setTotalPage(int totalPage) {
//        this.totalPage = totalPage;
//    }
    
    public void cal(){
//        totalPage = number % number_record;
//        if(totalPage!=0){
//            totalPage+=1;
//        }
            totalPage = (number+number_record-1)/number_record;
            if(page_index <0)page_index =0;
            if(page_index>=totalPage)page_index=0;//total page -1;
            begin = (page_index-1)*number_record;
            end = begin+number_record-1;
            end = end>=number?number-1:end;
    }
    
}
