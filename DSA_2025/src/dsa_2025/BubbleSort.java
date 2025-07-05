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
public class BubbleSort {
    public static void bubbleSort(int arr[]){
        for(int i = 0; i<arr.length; i++){ // outer loop str 0
            for ( int j = i + 1; j < arr.length; j++){ // inner loop str 1
                if ( arr[i] > arr[j]){
                    int temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                    // System.out.println("Swapping formed");
                    
                }
            }
            // System.out.println("Number of pass " + i);
        }
    }
    public static void main(String args[]){
        int arr[] ={5,3,8,4,6};
        System.out.println("Print Data Before Sorting: /n");
        for ( int x : arr){
            System.out.print("\t" + x);
        }
        // main method
        bubbleSort(arr);
        System.out.println("\n Print data after Sorting: \n");
        for ( int x : arr){
            System.out.print("\t" + x);
        }
    }
    
}
