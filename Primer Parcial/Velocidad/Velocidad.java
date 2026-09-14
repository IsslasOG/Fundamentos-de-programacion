package com.mycompany.uaeh;

import java.util.Scanner;

public class Velocidad {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        System.out.print("Ingrese la velocidad: ");
        int velocidad = entrada.nextInt();
        
        System.out.print("¿Es tu cumpleaños? (true/false): ");
        boolean escumpleanos = entrada.nextBoolean();
        
        int resultado = 0;

        if (escumpleanos) {
            velocidad = velocidad - 5;
        }

        if (velocidad <= 60) {
            resultado = 0;
        }

        if (velocidad > 60 && velocidad <= 80) {
            resultado = 1;
        }

        if (velocidad > 80) {
            resultado = 2;
        }

        System.out.println("Resultado de la multa: " + resultado);
    }
}