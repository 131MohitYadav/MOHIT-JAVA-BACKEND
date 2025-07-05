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
public class Node1 {
    public int data;
    public Node1 next;
    public Node1 prev;
    
    public Node1(int data){
        this.data = data;
        next = null;
        System.out.println("Node Created success");
    }
    
    public void printForward(Node1 head){
        Node1 temp = head;
        do{
            System.out.print("-->"+temp.data);
            temp = temp.next;
            
        }
        while(temp != head);
    }
    
    public void printBackward(Node1 head){
        Node1 temp = head;
        do{
            System.out.print("--->"+temp.data);
            temp = temp.next;
        }
        while(temp != head);
    }
    public void display(Node1 head){
        Node1 temp = head;
        do{
                System.out.print("--->"+temp.data);
                temp = temp.next;
        }
        while(temp != head);
    }
    public static void main(String args[]){
        Node1 f1 = new Node1(10);
        Node1 f2 = new Node1(20);
        Node1 f3 = new Node1(30);
        f1.next  = f2;
        f2.prev = f1;
        f2.next = f3;
        f3.prev = f2;
        f3.next = f1;
        f1.prev = f3;
        
        Node1 head = f1;
        Node1 tail = f3;
       // System.out.println("Print data of singly Linked List by using do while loop");
       // head.display(f3);
        System.out.println("Print data of singly linked lisdt in forward direction");
        head.printForward(f1);
        System.out.println("\n Print data of double linked list in Backward Direction");
        head.printBackward(head);
    }
    
}
