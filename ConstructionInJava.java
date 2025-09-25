package com.abstraction;

class grandparent{
	public grandparent() {
		super();
		System.out.println("grand parent constructor");
	}
}

class person extends grandparent{
	int parent_id=20;
	public person() {
		super();
		System.out.println("person constructor");
	}
}

class student extends person{
	public int id;
	public String name;
	public student(int id,String name) {
		this.id=id;
		this.name=name;
	}
	public student(int id) {
		super();
		this.id=id;
	}
}

public class ConstructionInJava {
	public static void main(String[] args) {
		student s1=new student(101,"nisha");
		student s2=new student(102);
		System.out.println("first student:");
		System.out.println("id:"+s1.id);
		System.out.println("name:"+s1.name);
	}
}
