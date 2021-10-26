
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author PURE
 */
public class C1 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        /*int num1 = input.nextInt();
        System.out.println(num1);
        
        System.out.print("please enter a double");
        double d1 = input.nextDouble();
        System.out.printf("%.2f",d1);
        
        float f1 = 1.256f;
        boolean b = (7>2);
        System.out.println(b);*/

        //int d = 30 + (int)(Math.random()*20);
        //System.out.println(d);
        String s1 = "Welcome to Java";
        System.out.println(s1);
        /*String s2;
        System.out.print("Enter a string : ");
        s2=input.next();
        System.out.println(s2.length());*/
 /*String s3 = "456";
        int n2 = Integer.parseInt(s3);
        System.out.println(n2+200);
        System.out.println(s3+300);*/
        int[] array1;
        array1 = new int[10];
        System.out.println(array1);
        for (int i = 0; i < array1.length; i++) {
            array1[i] = i * 2;
        }
        for (int i : array1) { //for each
            System.out.print(i + " ");
        }
        System.out.println("");
        int[][] arr2 = {{1,2},{3,4},{5,6}};
        for (int i = 0; i < arr2.length; i++) {
            for (int j = 0; j < arr2[0].length; j++) {
                System.out.print(arr2[i][j] + " ");                
            }
            System.out.println("");
        }
        
        int[][] arr3 = {{1, 2, 3},
                        {1},
                        {1, 2},
                        {1, 2, 3, 4}};
        for (int i = 0; i < arr3.length; i++) {
            for (int j = 0; j < arr3[i].length; j++) {
                System.out.print(arr3[i][j] + " ");                
            }
            System.out.println("");
        }
    }
}
