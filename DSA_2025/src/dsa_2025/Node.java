/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
// */
//package dsa_2025;
//
///**
// *
// * @author yadav
// */

//public class Node {
//    int data;
//    Node next;
//    
//    public Node(int data){
//        this.data = data;
//        next = null;
//        System.out.println("Node created Success");
//    }
//    public void display(Node head){
//        Node temp = head;
//        while(temp!=null){
//            System.out.print("-->"+temp.data);
//            temp = temp.next;
//        }
//    }
//    public static void main(String args[]){
//        Node first = new Node(10);
//        Node second = new Node(20);
//        Node third = new Node(30);
//        Node forth = new Node(40);
//        //Head point the first node of single Linked list
//        Node head = first;
//        first.next = second;
//        second.next = third;
//        third.next = forth;
//       // System.out.println("Print data of singly Linked list");
//        System.out.println("Print Data of Singly Linked List using Method");
//        head.display(head);
//    }
//    
//}

// INSERT NEW NODE AT STARTING LINKED LIST  AND INSERT NEW NODE AT ENDING OF START// 

package dsa_2025;

/**
 *
 * @author yadav
 */
public class Node {
    int data;
    Node next;
    
    public Node(int data){
        this.data = data;
        next = null;
        System.out.println("Node created Success");
    }
    public void display(Node head){
        Node temp = head;
        while(temp!=null){
            System.out.print("-->"+temp.data);
            temp = temp.next;
        }
    }
    public Node addNodeAtStart(Node head, int data){
        // STEP 1: CREATE A NEW NODE
        Node newNode = new Node(data);
        
                // STEP 2 : MAKE POINT NEWNODE TO CURRENT NODE
                newNode.next = head;
                
                // STEP 3 : UPDATE HEAD
                head = newNode;
                
                // STEP 4: RETURN NEW HEAD
                return head;
                
                
    }
    public void addNodeAtEnd(Node head , int data){
        // STEP 1: CREATE A NEW NODE
        Node newNode  = new Node(data);
        
        // STEP 2: TRAVERSE THE LIST
        Node temp = head;
        while(temp.next!= null){
            temp = temp.next;
        }
        // Setting the last node next pointer to the new node
        temp.next = newNode;
    }
    
    public void addNodeAtPos(Node head, int data , int pos){
        // step 1: create a new node
        Node newNode = new Node(data);
                
                // step 2: Travese the list upto specified position
                pos--;
                Node temp1 = head;
                Node temp2 = head.next;
                while(pos>1){
                    temp1 = temp1.next;
                    temp2 = temp2.next;
                    pos--;
                }
                temp1.next = newNode;
                newNode.next = temp2;
    }
    public boolean isEmpty(Node head){
        return head == null;
    }
    
    public Node deleteFirstNode(Node head){
        // step1 ; check the list is empty
        if(isEmpty(head)){
            System.out.println("List is empty");
        }
        else{
            // step 2: store head into temporary variable
            Node temp = head;
            // step 3: Move head to the next Node
            head = head.next;
            // step 4: Free memory of the temporary variable
            temp = null;
        }
        return head;
    }
    
    public void  deleteLastNode(Node head){
        // step 1 : check list is empty
        if ( isEmpty(head)){
            System.out.println("List is empty");
        }
        else{
            // step 2 : Traverse the List upto Last node
            Node temp = head;
            while(temp.next.next!= null){
                temp = temp.next;
            }
            // step 3: Update the temp
            temp.next = null;
        }
        
    }
    public void deleteNodeAtPos(Node head, int pos){
        // step 1: To check list is Empty
        if(isEmpty(head)){
            System.out.println("List is empty");
        }
        else{
            // step 2: travese the list
            pos--;
            Node temp1 = head;
            Node temp2 = head.next;
            while(pos>1){
                temp1 = temp1.next;
                temp2 = temp2.next;
                pos--;
            }
            temp1.next = temp2.next;
        }
    }
    public static void main(String args[]){
        Node first = new Node(10);
        Node second = new Node(20);
        Node third = new Node(30);
        Node forth = new Node(40);
        
        //Head point the first node of single Linked list
        Node head = first;
        first.next = second;
        second.next = third;
        third.next = forth;
       // System.out.println("Print data of singly Linked list");
        System.out.println("\n# Print Data of Singly Linked List using Method");
        head.display(head);
      //  head = head.addNodeAtStart(head, 5);
        System.out.println(" \n ## After Data insert into the starting index");
        head.display(head);
       
        System.out.println(" ### \nAfter Data insert into the ending index");
       head.addNodeAtEnd(head , 50);
        head.display(head);
        
        System.out.println("\n #### Insert node at specific position");
        head.addNodeAtPos(head,45,4);
        head.display(head);
        head = head.deleteFirstNode(head);
        System.out.println("\n ##### delete node at first Position");
        head.display(head);
        head = head.deleteFirstNode(head);
        System.out.println("\n ###### Print data after last node deleted in the linked list");
        head.display(head);
        System.out.println("\n ####### Print data after specific node is deleted");
        head.deleteNodeAtPos(head,2);
        head.display(head);
    }
    
}

