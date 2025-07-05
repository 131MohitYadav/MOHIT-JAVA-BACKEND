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
public class Tree {
    public int data;
    Tree left;
    Tree right;

    // Constructor with data
    public Tree(int data) {
        this.data = data;
        left = null;
        right = null;
    }

    // Default constructor
    public Tree() {
    }

    // PreOrder Traversal: Root -> Left -> Right
    public static void preOrder(Tree root) {
        if (root == null) {
            return;
        }
        System.out.print("===>" + root.data); // Root
        preOrder(root.left); // Left subtree
        preOrder(root.right); // Right subtree
    }

    // InOrder Traversal: Left -> Root -> Right
    public static void inOrder(Tree root) {
        if (root == null) {
            return;
        }
        inOrder(root.left); // Left subtree
        System.out.print("===>" + root.data); // Root
        inOrder(root.right); // Right subtree
    }

    // PostOrder Traversal: Left -> Right -> Root
    public static void postOrder(Tree root) {
        if (root == null) {
            return;
        }
        postOrder(root.left); // Left subtree
        postOrder(root.right); // Right subtree
        System.out.print("===>" + root.data); // Root
    }

    // Insert a Node in Binary Search Tree
    public static Tree insert(Tree root, int data) {
        if (root == null) {
            return new Tree(data);
        }
        if (data < root.data) {
            root.left = insert(root.left, data);
        } else {
            root.right = insert(root.right, data);
        }
        return root;
    }

    // Binary Search in BST
    public boolean bst(Tree root, int search) {
        if (root == null) {
            return false;
        }
        if (root.data == search) {
            return true;
        }
        if (search < root.data) {
            return bst(root.left, search);
        } else {
            return bst(root.right, search);
        }
    }

    // Main method
    public static void main(String args[]) {
        Tree root = new Tree(100);
        insert(root, 70);
        insert(root, 60);
        insert(root, 65);
        insert(root, 90);
        insert(root, 150);
        insert(root, 120);
        insert(root, 190);

        // Binary Search Test
        System.out.println("\nBinary Search Result: " + root.bst(root, 190));
    }
}

        
        // DELETED NODE IN BINARY SEARCH TREE
//        public static Tree delete(Tree root, int data){
//            // BASE CONDITION
//            if ( root == null){
//                return root;
//            }
//            if ( data < root.data){
//                root.left = delete(root.left,data);
//            }
//            else if( data > root.data) {
//                root.right = delete(root.right,data);
//            }
//            else{
//                    // case 1  and case 2 or no child
//                    if ( root.left == null){
//                    return root.right;
//                    }
//                    else if(root.right == null){
//                    return root.left;
//                    }
//                    }
//            return root;
//        }

//    public static void main(String args[]){
//        // PREORDER , INORDER , POSTORDER //
//  Tree t1 = new Tree(10);
//  Tree t2 = new Tree(20);
//  t1.left = t2;
// Tree t3 = new Tree(30);
// t1.right = t3;
// Tree t4 = new Tree(40);
// t1.left.left = t4;
// Tree t5 = new Tree(50);
// t1.left.right = t5;
// Tree t6 = new Tree(60);
// t1.right.left = t6;
// Tree t7 = new Tree(70);
// t1.right.right = t7;

//
//
//  Tree t1 = new Tree(100);
//  Tree t2 = new Tree(20);
//  t1.left = t2;
// Tree t3 = new Tree(500);
// t1.right = t3;
// Tree t4 = new Tree(10);
// t1.left.left = t4;
// Tree t5 = new Tree(30);
// t1.left.right = t5;
// 
// 

//        System.out.println("Preorder Tree Traversal ");
//        preOrder( t1);
//        System.out.println("");
//        System.out.println("inorder Tree Traversal ");
//        inOrder(t1);
//        System.out.println("\n Insertion of binary search tree");
//        insert(t1,40);
//        insert ( t1,5);
//        inOrder(t1);
//        System.out.println("\n Delete in Binary Search Tree");
//        delete(t1,5);
//        delete(t1,30);
//        inOrder(t1);
//        System.out.println("");
//        System.out.println(" Postorder Tree Traversal ");
//        postOrder(t1);




