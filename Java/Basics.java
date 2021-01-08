// All java code must be in a class
// "javac fileName.java" to complier and "java fileName" to execute

package Java;
import java.util.Scanner;

public class Basics {

    public static void main(String[] args) {
        // Primitive types
        Boolean varBoolean = false;
        int varInt = 2;
        double varDouble = 1.0;
        char varChar = 'X';

        //Reference types - string
        String s = "This is" + " " + "a string";
        s.charAt(0);

        System.out.println(s); //Print to screen

        //Input
        Scanner scanner = new Scanner(System.in);
        varDouble = scanner.nextDouble();
    }
}