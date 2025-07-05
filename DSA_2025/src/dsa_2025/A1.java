/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dsa_2025;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;

/**
 *
 * @author yadav
 */
public class A1 {
    
    public static void main(String[] args){
        
        ArrayList list = new ArrayList();
        list.add(10);
        list.add("Hello");
        list.add('A');
        list.add(true);
        list.add(123.24f);
        list.add(45.444);
        list.add(10);
        System.out.println("Array List: " + list);
        System.out.println("Print Data of ArrayList using for loop");
        for(int i = 0; i < list.size(); i++){
        System.out.println("==>" + list.get(i));
    }
        System.out.println("\n Print Data of Array list uisng for each");
        for(Object x : list){
            System.out.println("==>" + x);
        }
        System.out.println("\n Print Data of ArrayList using Iterator");
        Iterator itr = list.iterator();
        while(itr.hasNext()){
            Object x = itr.next();
            if ( x.equals(10)){
                itr.remove();
            }
            System.out.println("====>" + x);
        }
        System.out.println("\n---------------------\n");
        System.out.println("" + list);
        
        System.out.println("\n Print Data of ArrayList in Forward Direction uisng ListIterator");
        ListIterator ltr = list.listIterator();
        while(ltr.hasNext()){
            System.out.println("==>" + ltr.next());
        }
        System.out.println("\n Print Data of Arraylist in Back Direction using ListIterator");
        while(ltr.hasPrevious()){
            System.out.println("==" + ltr.previous());
        }
        
    }
    
}
