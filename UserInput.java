package com.datatypes;

import java.util.Scanner;

public class UserInput {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int userInput;
		System.out.println("enter a number:");
		userInput=sc.nextInt();
		System.out.println("you entered value is:"+userInput);
		sc.close();
	}
}
