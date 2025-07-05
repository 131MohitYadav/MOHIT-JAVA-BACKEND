/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dsa_2025;

/**
 *
 * @author yadav
 */
public class QueueEnque {
    
    static int Q[] = new int[5];
    
    static int front=-1;
    static int rear = -1;
    
    public static boolean isEmpty(){
        return front==-1 && rear == -1;
    }
    public static boolean isFull(){
        return rear == Q.length-1;
        
    }
    
    public static void Enq(int data){
        // STEP 1: TO CHECK OVERFLOW CONDITION
        if(isFull()){
            System.out.println("Queue is overflow");
        }
        if(isEmpty()){
           front++;
           rear++;
           Q[rear]=data;
            System.out.println("First element insert into the queue");
        }
        else{
            rear++;
            
            Q[rear] = data;
            System.out.println("Data insert into First Queue Access");
        }
        
    }
    
    
   public static void display(){
        if ( isEmpty()){
            System.out.println("Queue is empty");
        }
        else{
            System.out.println("Print Data of the Queue");
            for ( int i = front; i <= rear ; i++){
                System.out.println("====>" + Q[i]);
            }
        }
    }
    public static void main (String args[]){
        
      Enq(10);
      Enq(20);
      Enq(30);
      Enq(40);
      Enq(50);
        display();
    }
    
}
