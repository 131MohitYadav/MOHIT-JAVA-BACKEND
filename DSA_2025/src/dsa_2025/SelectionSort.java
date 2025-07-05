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

public class SelectionSort {
    
    public static void  selectionSort(int arr[]){
        int n = arr.length;
        for ( int i = 0; i < n - 1; i++){
            int minIndex = i; // min value = 3
            for(int j = i + 1; j < n; j++){
                if ( arr[minIndex] > arr[j]){
                    // arr[3] > arr[4]
                    // 8 > 3
                    minIndex = j;
                }
            }
            int temp = arr[minIndex];
            arr[minIndex] = arr[i];
            arr[i] = temp;
        }
    }
    public static void main(String args[]){
        int arr[] = {10,9,2,8,3};
        System.out.println("Print Before Sorting");
        for(int i = 0; i < arr.length; i++){
            System.out.println("\t" + arr[i]);
        }
        selectionSort(arr);
        System.out.println("\n Print After Sorting");
        for(int i = 0; i < arr.length; i++){
            System.out.println("\t" + arr[i]);
        }
    }
    
}

//          DESCENDING ORDER SELECTION SORT //  

//public class SelectionSort {
//    
//    public static void  selectionSort(int arr[]){
//        int n = arr.length;
//        for ( int i = 0; i < n - 1; i++){
//            int minIndex = i; // min value = 3
//            for(int j = i + 1; j < n; j++){
//                if ( arr[minIndex] < arr[j]){
//                    // arr[3] > arr[4]
//                    // 8 > 3
//                    minIndex = j;
//                }
//            }
//            int temp = arr[minIndex];
//            arr[minIndex] = arr[i];
//            arr[i] = temp;
//        }
//    }
//    public static void main(String args[]){
//        int arr[] = {10,9,2,8,3};
//        System.out.println("Print Before Sorting");
//        for(int i = 0; i < arr.length; i++){
//            System.out.println("\t" + arr[i]);
//        }
//        selectionSort(arr);
//        System.out.println("\n Print After Sorting");
//        for(int i = 0; i < arr.length; i++){
//            System.out.println("\t" + arr[i]);
//        }
//    }
//    
//}
//
//
