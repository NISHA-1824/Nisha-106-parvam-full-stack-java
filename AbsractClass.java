package com.abstraction;

abstract class Shape {

    abstract void draw();
    
    
    public void display() {
        System.out.println("This is the display function");
    }
}

class Circle extends Shape {
    
    void draw() {
        System.out.println("This is circle draw method");
    }
}

public class AbsractClass {
    public static void main(String[] args) {
        
        Shape circle = new Circle(); 

        
        circle.draw();    
        circle.display();
    }
}
