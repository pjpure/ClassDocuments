/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PURE
 */
public class Fruit {
    public static void main(String[] args) {
        Object f = new Fruit();
        Apple a1 = new Apple();
        Orange o1 = new Orange();
        //Apple a2 = (Apple)f;
        Object f2 = new Apple();
        Apple a3 = (Apple)f2;
    }
}
class Apple extends Fruit{
    
}
class Orange extends Fruit{
    
}
