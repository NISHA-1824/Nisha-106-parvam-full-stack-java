package com.inheritance;

class Animal{
	public void eat() {
		System.out.println("Animal Eating");
	}
}

class Dog extends Animal{
	public void eat() {
		System.out.println("dog is eating");
	}
	public void isWalking() {
		System.out.println("dog is walking");
	}
}

public class Inheritance1 {
	public static void main(String[] args) {
		Dog d1=new Dog();
		d1.eat();
		d1.isWalking();
	}
}
