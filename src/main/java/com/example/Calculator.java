package com.example;

public class Calculator {
    public int add(int a, int b) {
        return a + b;
    }


    public int divide(int a, int b) {
        if (b == 0) throw new IllegalArgumentException("Деление на ноль запрещено");
        return a / b;
    }

    public static void main(String[] args) {
        Calculator c = new Calculator();
        System.out.println("2 + 3 = " + c.add(2, 3));
        System.out.println("10 / 2 = " + c.divide(10, 2));
    }
}
