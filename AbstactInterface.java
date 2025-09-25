package com.abstraction;

class Car implements vehicle{
	public void start() {
		System.out.println("Car class start method");
	}
	public void stop() {
		System.out.println("Car class stop method");
	}
}

public class AbstactInterface {
	public static void main(String[] args) {
		Car c1=new Car();
		c1.start();
		c1.stop();
		vehicle.display();
	}
}
