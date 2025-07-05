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
public class BinarySearch {
    public static int Binarysearch( int arr[] , int search){
        int low = 0;
        int high = arr.length - 1;
        int result = -1;
        while ( low < high){
            int mid = (low + high)/2;
            if(arr[mid] == search){
                result  = mid + 1;
                break;
            }
            else if ( search > arr[mid]){
                low = mid + 1;
                
            }
            else if ( search < arr[mid]){
                high = mid - 1;
            }
        }
        return result;
    }
    public static void main(String args[]){
        int arr [ ] = {10 ,30 , 40 , 79 , 100};
        int search = 79;
        int result  = Binarysearch(arr,search);
        if ( result > 1){
            System.out.println("Searching Successful: Elment fount at position: " + result);
        }
        else{
            System.out.println("Searching Unsuccessful : Element not found");
        }
    }
    
}
