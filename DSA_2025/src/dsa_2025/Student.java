/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dsa_2025;
import java.util.Comparator;
import java.util.TreeSet;


/**
 *
 * @author yadav
 */
public  class Student implements Comparator<Student>  {

    private String name;
    private float per;

    public Student() {
    }
    public Student(String name, float per) {
this.name = name;
this.per = per;
}
public String getName() {
return name;
}
public void setName(String name) {
this.name = name;
}
public float getPer() {
return per;
}
public void setPer(float per) {
this.per = per;
}

    @Override
    public String toString() {
        return "Student{" + "name=" + name + ", per=" + per + '}';
    }
    public static void main(String args[]){
        Student s1 = new Student("Mohit" , 77.54f);
         Student s2 = new Student("Rohit" , 55.54f);
 Student s3 = new Student("Deepak" , 70.54f);
 Student s4 = new Student("Manish" , 75.54f);
 TreeSet<Student> ts = new TreeSet<Student>(new Student());
 ts.add(s1);
 ts.add(s2);
 ts.add(s3);
 ts.add(s4);
 for(Student x : ts){
     System.out.println(x.getPer()+" "+x.getName());
 }

 }
    @Override
public int compare(Student o1, Student o2) {
if(o1.per > o2.per){
return 1; // for descending order return -1
}else if(o1.per < o2.per){
return -1; // for descending order return  +1;
}else{
return 0;
}
}
}


    

