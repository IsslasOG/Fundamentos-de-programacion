package com.mycompany.uaeh;

import java.util.Scanner;

public class Operaciones {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int repetir;
        
        do {
            System.out.print("Ingrese el primer numero: ");
            int num1 = entrada.nextInt();
            
            System.out.print("Ingrese el segundo numero: ");
            int num2 = entrada.nextInt();
            
            System.out.print("Ingrese la operacion (+, -, *, /): ");
            char operador = entrada.next().charAt(0);
            
            switch (operador) {
                case '+':
                    System.out.println("Resultado: " + (num1 + num2));
                    break;
                case '-':
                    System.out.println("Resultado: " + (num1 - num2));
                    break;
                case '*':
                    System.out.println("Resultado: " + (num1 * num2));
                    break;
                case '/':
                    if (num2 != 0) {
                        System.out.println("Resultado: " + ((double) num1 / num2));
                    } else {
                        System.out.println("Error: Division por cero");
                    }
                    break;
                default:
                    System.out.println("Operador no valido");
                    break;
            }
            
            System.out.print("¿Desea repetir? (1: Si / 0: No): ");
            repetir = entrada.nextInt();
        } while (repetir == 1);
    }
}