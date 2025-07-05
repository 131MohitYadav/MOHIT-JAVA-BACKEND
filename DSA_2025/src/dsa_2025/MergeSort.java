/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

// DESCENDING ORDER

package dsa_2025;




public class MergeSort {
    public static void conquer(int arr[], int si, int mid, int ei) {
        int size = ei - si + 1;
        int merged[] = new int[size];
        int idx1 = si;
        int idx2 = mid + 1;
        int x = 0; // x represents the merged array index

        while (idx1 <= mid && idx2 <= ei) {
            if (arr[idx1] >= arr[idx2]) {
                merged[x++] = arr[idx1++];
            } else {
                merged[x++] = arr[idx2++];
            }
        }
        while (idx1 <= mid) {
            merged[x++] = arr[idx1++];
        }
        while (idx2 <= ei) {
            merged[x++] = arr[idx2++];
        }

        // Copy the data into the original array
        for (int i1 = 0, j1 = si; i1 < size; i1++, j1++) {
            arr[j1] = merged[i1];
        }
    }

    public static void divide(int arr[], int si, int ei) {
        if (si >= ei) { // Base condition
            return;
        }
        int mid = (si + ei) / 2;
        divide(arr, si, mid); // Sort left subarray
        divide(arr, mid + 1, ei); // Sort right subarray
        conquer(arr, si, mid, ei);
    }

    public static void main(String[] args) {
        int arr[] = {10, 30, 20, 50, 40, 5};
        System.out.println("Print Before Sorting");
        for (int i = 0; i < arr.length; i++) {
            System.out.println("\t" + arr[i]);
        }
        
        divide(arr, 0, arr.length - 1);
        
        System.out.println("\nPrint After Sorting");
        for (int i = 0; i < arr.length; i++) {
            System.out.println("\t" + arr[i]);
        }
    }
}
