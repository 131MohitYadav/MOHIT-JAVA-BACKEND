package com.mohit.bean;
// Generated 21 Mar, 2025 4:40:49 PM by Hibernate Tools 4.3.1



/**

 */
public class Demo1  implements java.io.Serializable {


     private int sid;
     private String name;
     private String surname;
     private Integer mobile;
     private String city;

    public Demo1() {
    }

	
    public Demo1(int sid) {
        this.sid = sid;
    }
    public Demo1(int sid, String name, String surname, Integer mobile, String city) {
       this.sid = sid;
       this.name = name;
       this.surname = surname;
       this.mobile = mobile;
       this.city = city;
    }
   
    public int getSid() {
        return this.sid;
    }
    
    public void setSid(int sid) {
        this.sid = sid;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getSurname() {
        return this.surname;
    }
    
    public void setSurname(String surname) {
        this.surname = surname;
    }
    public Integer getMobile() {
        return this.mobile;
    }
    
    public void setMobile(Integer mobile) {
        this.mobile = mobile;
    }
    public String getCity() {
        return this.city;
    }
    
    public void setCity(String city) {
        this.city = city;
    }




}



