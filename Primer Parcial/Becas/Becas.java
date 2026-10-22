package com.mycompany.uaeh;

import java.util.Scanner;

public class Becas {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        System.out.print("Ingrese la edad del estudiante: ");
        int edad = entrada.nextInt();
        
        System.out.print("Ingrese el promedio del estudiante: ");
        double promedio = entrada.nextDouble();
        
        if (edad > 18) {
            if (promedio >= 9.0) {
                System.out.println("La beca asignada es de: $10000");
            } else if (promedio >= 7.5) {
                System.out.println("La beca asignada es de: $8000");
            } else if (promedio >= 6.0) {
                System.out.println("La beca asignada es de: $5000");
            } else {
                System.out.println("Se enviara carta de invitacion para estudiar mas");
            }
        } else {
            if (promedio >= 9.0) {
                System.out.println("La beca asignada es de: $8000");
            } else if (promedio >= 8.0) {
                System.out.println("La beca asignada es de: $6000");
            } else if (promedio >= 6.0) {
                System.out.println("La beca asignada es de: $4000");
            } else {
                System.out.println("Se enviara carta de invitacion para estudiar mas");
            }
        }
    }
}