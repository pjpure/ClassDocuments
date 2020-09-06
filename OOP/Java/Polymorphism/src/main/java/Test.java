
import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PURE
 */
public class Test {
    public static void main(String[] args) {
        Geometric obj1 = new Circle(); // polymophism
        Geometric obj2 = new Rectangle();
//        Circle c1 = new Circle();
//        c1.display(5.6);
//        //c1.display(2.5, 6.3);
//        obj1.display(5.6);
//        obj2.display(0);
        ArrayList<Geometric> list = new ArrayList<>();
        list.add(new Geometric());
        list.add(obj1);
        list.add(obj2);
        for (int i = 0; i < list.size(); i++) {
            if(list.get(i) instanceof Circle){
                ((Circle)list.get(i)).display(2.5);
            } 
            if(list.get(i) instanceof Rectangle){
                ((Rectangle)list.get(i)).display(2.5,3);
            }
        }
        
    }
    
}
