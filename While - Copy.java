package com.conditional;

import java.util.Scanner;

public class While{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        int size = -1;  
        
        
        while (size <= 5) {
            System.out.println("Enter a number greater than 5:");  
            size = sc.nextInt();
            
            if (size <= 5) {
                System.out.println("Invalid Number, please try again.");
            }
        }
        if (size % 2 == 0) {
            System.out.println(size + " is even.");
        } else {
            System.out.println(size + " is odd.");
        }
    }
}
