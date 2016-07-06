package com.interview.dynamic;

import java.util.Scanner;

/**
 * Created by ahmad.hassan on 06/07/16.
 */
public class MaxSubArray {
    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        for (int i = 0; i < n; i++) {
            int numberOfElements = sc.nextInt();
            int[] c = new int[numberOfElements];
            for (int j = 0; j < numberOfElements; j++) {
                c[j] = sc.nextInt();
            }
            System.out.println(conti(c) + " " + noconti(c));
        }
    }

    private static int conti(int[] c) {

        int max_so_far = c[0];
        int curr_max = c[0];

        for (int i = 1; i < c.length; i++) {
            curr_max = Math.max(c[i], curr_max + c[i]);
            max_so_far = Math.max(max_so_far, curr_max);
        }
        return max_so_far;
    }


    public static int noconti(int[] array) {
        Integer result = null;
        Integer max = null;
        for (int i = 0; i < array.length; i++) {
            if (array[i] < 0) {
                if (result == null) {
                    result = array[i];
                } else {
                    result = Math.max(result, array[i]);
                }

            }
            if (array[i] > 0) {
                if (max == null) {
                    max = array[i];
                } else {
                    max = max + array[i];
                }
            }
        }
        if (max == null) {
            return result;
        } else {
            return max;
        }
    }
}
