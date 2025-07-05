/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dsa_2025;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/**
 *
 * @author yadav
 */
public class Hash {
    public static void main(String args[]){
//        HashMap<String,Integer> hm = new HashMap();
//LinkedHashMap<Integer,String>  hm=new
//LinkedHashMap<>();

TreeMap<Integer,String> hm=new
TreeMap<>();
 
//        hm.put("A",1);
//        hm.put("B",1);
//        hm.put("C",2);
//        hm.put("D",3);
//        hm.put("E",5);

hm.put(10,"A");
hm.put(10,"B");
hm.put(200,"C");
hm.put(30,"D");
hm.put(500,"E");
        System.out.println(""+hm);
        
        
        Set keys = hm.keySet();
//        System.out.println("pirnt element of HashMap using Map.Entry");
//        for(Map.Entry<String,Integer>k:hm.entrySet()){
//            System.out.println("Key is: "+ k.getKey()+ " Value is: "+ k.getValue());
//        }
   System.out.println("pirnt element of HashMap using Map.Entry");
   for(Map.Entry<Integer,String>k:hm.entrySet()){
            System.out.println("Key is: "+ k.getKey()+ " Value is: "+ k.getValue());
        }
        
    }
    
}
