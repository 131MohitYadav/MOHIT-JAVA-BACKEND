/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dsa_2025;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Vector;

/**
 *
 * @author yadav
 */
public class V1 {
    public static void main(String args[]){
        
        Vector<Integer> v = new Vector<Integer>();
        for ( int i = 1; i <= 10; i++){
            v.add(i);
        }
        v.add(10);
        v.add(1);
        System.out.println("Vector Elements : " + v);
        Enumeration<Integer> en = v.elements();
        while(en.hasMoreElements()){
            System.out.println("===>" + en.nextElement());
        }
        System.out.println("\n Print data of Vector uisng Iterator ");
        
        Iterator<Integer> itr = v.iterator();
        while(itr.hasNext()){
            int x = itr.next();
            if ( x % 2 == 0){
                System.out.println("-->" + x);
                
            }
            else{
                itr.remove();
            }
            
        }
        System.out.println(""+v);
        ListIterator<Integer> ltr = v.listIterator();
        while(ltr.hasNext()){
            int x = ltr.next();
            System.out.println("|| "+x);
            if ( x == 10){
                ltr.add(100);
            }
            if ( x== 4){
                ltr.set(44);
            }
            if ( x==8){
                ltr.remove();
            }
        }
        System.out.println("***==> " + v);
    }
    
}
