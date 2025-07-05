/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dsa_2025;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/**
 *
 * @author yadav
 */
public class HashTable {
    public static void main(String args[]){
        Hashtable<Integer,String> hm = new Hashtable<Integer,String>();
        
        hm.put(100,"A");
        hm.put(10,"B");
        hm.put(200,"C");
        hm.put(30,"D");
        hm.put(500,"E");
        hm.put(100,"AAAA");
        System.out.println("" + hm);
        Set Keys = hm.keySet();
        System.out.println("Contains key: " + hm.containsKey(30));
        System.out.println("VAlue check " + hm.containsValue("D"));
        System.out.println("Print elment of HashMap using Map.Entry");
        for(Map.Entry<Integer,String> k : hm.entrySet()){
            System.out.println("key is: " + k.getKey() +" Value is: "+ k.getValue());
            
        }
    }
    
}
