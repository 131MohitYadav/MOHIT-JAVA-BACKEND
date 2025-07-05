/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohit.bean;

/**
 *
 * @author yadav
 */
public class FacultyBean {
    
    private int fid;
    private String name;
    private String gender;
    private String dob;
    private String hiredate;
    private String email;
    private String dept;
    private double salary;
    private String desi;

    public FacultyBean() {
    }

    public FacultyBean(int fid, String name, String gender, String dob, String hiredate, String email, String dept, double salary, String desi) {
        this.fid = fid;
        this.name = name;
        this.gender = gender;
        this.dob = dob;
        this.hiredate = hiredate;
        this.email = email;
        this.dept = dept;
        this.salary = salary;
        this.desi = desi;
    }

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getHiredate() {
        return hiredate;
    }

    public void setHiredate(String hiredate) {
        this.hiredate = hiredate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getDesi() {
        return desi;
    }

    public void setDesi(String desi) {
        this.desi = desi;
    }
    
    
}
