package com.encapsulation;
public class Encapsulation {
	class Student{
		private String name;
		private int id;
		private int roll;
		private int age;
		
		public String getName() {
			return this.name;
	// this -> keyword used to access instance variables & methods static also of current obj 
	// shortcut : right click, source, genarate getters and setters, select, finish
		}
		public void setName(String name) {
			this.name = name;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public int getRoll() {
			return roll;
		}
		public void setRoll(int roll) {
			this.roll = roll;
		}
		public int getAge() {
			return age;
		}
		public void setAge(int age) {
			this.age = age;
		}
	// shortcut : right click, source, genarate to string(), select, finish
		@Override
		public String toString() {
			return "Student [name=" + name + ", id=" + id + ", roll=" + roll + ", age=" + age + "]";
		}
	}

	public class EncapsulationIn {
		public static void main(String[] args) { // shortcut : type main, ctrl+space, enter
			Student s1 = new Student();
			s1.setName("Adam");
			s1.setId(1001);
			s1.setRoll(01);
			s1.setAge(20);
			System.out.println(s1); // shortcut: type Syso, ctrl+space, enter
		}
	}
}