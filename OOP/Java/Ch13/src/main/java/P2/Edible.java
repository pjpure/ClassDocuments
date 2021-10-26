/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package P2;

/**
 *
 * @author PURE
 */
public interface Edible {
    String howToEat();
}
abstract class Fruit implements Edible{
    
}
abstract class Animal{
   abstract String sound();  
}
class Orange extends Fruit{

    @Override
    public String howToEat() {
        return"make orange juice";
    }   
    
}
class Apple extends Fruit{

    @Override
    public String howToEat() {
        return"make phone";
    }
    
}
class Chicken extends Animal implements Edible{

    @Override
    public String howToEat() {
        return"deep fried";
    }

    @Override
    String sound() {
        return"kuk kuk";
    }
        
}
class Tiger extends Animal{

    @Override
    String sound() {
        return"555";
    }
    
}