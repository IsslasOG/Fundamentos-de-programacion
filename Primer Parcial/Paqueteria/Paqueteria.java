package com.mycompany.uaeh;

import java.util.Scanner;

public class Paqueteria {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        System.out.print("Ingrese el peso en gramos: ");
        int peso = entrada.nextInt();
        
        if (peso > 5000) {
            System.out.println("El paquete excede el peso maximo (5000g)");
        } else {
            System.out.print("Ingrese la zona (1-5): ");
            int zona = entrada.nextInt();
            int costo = 0;
            
            if (zona == 1) {
                costo = peso * 11;
            }
            if (zona == 2) {
                costo = peso * 10;
            }
            if (zona == 3) {
                costo = peso * 12;
            }
            if (zona == 4) {
                costo = peso * 25;
            }
            if (zona == 5) {
                costo = peso * 30;
            }
            
            System.out.println("El costo del envio es: $" + costo);
        }
    }
}