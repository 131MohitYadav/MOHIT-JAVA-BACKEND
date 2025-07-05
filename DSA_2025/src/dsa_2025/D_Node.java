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
public class D_Node {
    
    D_Node prev;
    int data;
    D_Node  next;
    
    public D_Node(int data){
        prev = null;
        this.data = data;
        next = null;
        System.out.println("Node created successfully");
    }
    
    public void printForwardDirection(D_Node head){
        D_Node temp = head;
        while ( temp != null){
            System.out.print("====>" + temp.data);
            temp = temp.next;
        }
    }
        public void printBackwardDirection(D_Node tail){
        D_Node temp = tail;
        while ( temp != null){
            System.out.print("====>" + temp.data);
            temp = temp.prev;
        }

    }
    public static void main(String args []){
        D_Node f1 = new D_Node(10);
        D_Node f2 = new D_Node(20);
        D_Node f3 = new D_Node(30);
        D_Node f4 = new D_Node(40);
        
        f1.next = f2;
        f2.prev = f1;
          
        f2.next = f3;
        f3.prev = f2;
        
        f3.next = f4;
        f4.prev = f3;
        
     
        D_Node head = f1;
        D_Node tail = f4;
        
        System.out.println("\n Print data of Doubly linked list in forward direction");
        head.printForwardDirection(head);
        System.out.println("\n Print data of Doubly linked list backward direction");
        head.printBackwardDirection(tail);
        
    }
    
}
