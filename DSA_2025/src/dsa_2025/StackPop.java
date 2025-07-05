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
public class StackPop {
    
  static int STACK[] = new int[5];
    static int top = -1; //member data or instance class
    
    public static boolean isEmpty(){
        return top == -1;
    }
    public static boolean isFull(){
        return top == STACK.length-1;
    }
    
    public static void push(int data){
        // STEP 1: TO CHECK OVER FLOW
        if(isFull()){
            System.out.println("Stack over flow");
            
        }
        // STEP 2 : INCREASE TOP BY 1
        top++;
        
        // STEP 3 : ASSIGN VALUE INTO THE STACK
        STACK[top] = data;
        System.out.println("Data insert into the stack is success");
        
    }
    
    public static int pop(){
        // STEP 1 : TO CHECK UNDER FLOW
        int r = -1;
        if ( isEmpty()){
            System.out.println("Under flow");
        }
        else{
            // STEP 2 : ASSIGN DATA INTO ANOTHER VARIABLE
            r = STACK[top];
            // STEP 3: DECREASE BY 1
            top--;
            }
        // STEP 4: RETURN VALUE OF R
        return r;
        }
    
    public static void display(){
        
        
        if(isEmpty()){
            System.out.println("Stack is empty");
        }
        else{
            System.out.println("Print Data of the Stack");
            for ( int i = top; i>=0; i--){
                System.out.println("=====>"+STACK[i]);
            }
        }
    }
    
    public static int peek(){
        if (isEmpty()){
            return STACK[top];
        }
        else{
            return -1;
        }
    }
    public static void main(String args[]){
        
        push(10);
        push(20);
        push(30);
        push(40);
        push(50);
        display();
        System.out.println("Deleted Element: "+pop());
        System.out.println("Deleted Element: "+pop());
        System.out.println("Top Element of the Stack: "+peek());
        System.out.println("Deleted Element: " +pop());
        System.out.println("Deleted Element: " +pop());
        System.out.println("Deleted Element: " +pop());
        
        
    }
    
}




