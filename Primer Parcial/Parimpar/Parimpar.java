package com.mycompany.uaeh;

import java.util.Scanner;

public class Parimpar {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        System.out.print("Ingrese un numero: ");
        int numero = entrada.nextInt();
        
        if (numero == 0) {
            System.out.println("El numero es neutro (0)");
        } else if (numero % 2 == 0) {
            System.out.println("El numero es par");
        } else {
            System.out.println("El numero es impar");
        }
    }
}