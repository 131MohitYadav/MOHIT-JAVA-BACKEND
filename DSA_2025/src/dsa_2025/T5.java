/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dsa_2025;

/**
 *
 * @author apple
 */
public class T5 extends Thread {
    
    public void run(){
        for ( int i = 1 ; i <= 5; i++){
            System.out.println("Child Thread: " + i);
        }
    }
    
    public static void main(String args[]){
        T5  t5 = new T5();
        t5.start();
        for(int i = 1;  i <= 5; i++){
            System.out.println("main Thread: " + i);
        
    }
        
    }
    
}
