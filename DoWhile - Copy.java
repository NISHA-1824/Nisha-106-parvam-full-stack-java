package com.conditional;

import java.util.Scanner;

public class DoWhile
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        int size; 
        do {
            System.out.println("Enter a number greater than 5:");  
            size = sc.nextInt();
            
            if (size <= 5) {
                System.out.println("Invalid Number, please try again.");
            }
        } while (size <= 5);  
       
        if (size % 2 == 0) {
            System.out.println(size + " is even.");
        } else {
            System.out.println(size + " is odd.");
        }
        sc.close();
    }
}
