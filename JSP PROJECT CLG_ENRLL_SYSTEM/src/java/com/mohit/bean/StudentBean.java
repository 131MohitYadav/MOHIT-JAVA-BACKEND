package com.mohit.bean;

public class StudentBean {
    private int sid;
    private String name;
    private String enroll;
    private String enrolld;
    private String dob;
    private String email;
    private String course;
    private String clg;
    private String city;

    public StudentBean() {
    }

    public StudentBean(int sid, String name, String enroll, String enrolld, String dob, String email, String course, String clg, String city) {
        this.sid = sid;
        this.name = name;
        this.enroll = enroll;
        this.enrolld = enrolld;
        this.dob = dob;
        this.email = email;
        this.course = course;
        this.clg = clg;
        this.city = city;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEnroll() {
        return enroll;
    }

    public void setEnroll(String enroll) {
        this.enroll = enroll;
    }

    public String getEnrolld() {
        return enrolld;
    }

    public void setEnrolld(String enrolld) {
        this.enrolld = enrolld;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getClg() {
        return clg;
    }

    public void setClg(String clg) {
        this.clg = clg;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
    

}
