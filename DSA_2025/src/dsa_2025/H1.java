/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dsa_2025;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.TreeSet;

/**
 *
 * @author yadav
 */
public class H1 {
    public static void main(String args[]){
        HashSet<Integer> hs = new HashSet<Integer>();
      //  LinkedHashSet<Integer> hs = new LinkedHashSet<Integer>();
        hs.add(100);
        hs.add(20);
        hs.add(300);
        hs.add(40);
        hs.add(1000);
        hs.add(200);
        hs.add(300);
        hs.add(400);
        hs.add(402);
        
               
        System.out.println("HashSet " + hs);
       // System.out.println("LinkedHashsett " + hs);
       TreeSet<String> hs1 = new TreeSet<String>();
       hs1.add("Z");
       hs1.add("A");
       hs1.add("Y");
       hs1.add("X");
        System.out.println(""+hs1);
        TreeSet hs2 = new TreeSet();
        hs2.add(new StringBuffer("Z"));
        hs2.add(new StringBuffer("A"));
        hs2.add(new StringBuffer("Y"));
        hs2.add(new StringBuffer("X"));
    }
    
}
