package com.mycompany.uaeh;

import java.util.Scanner;

public class Estacionamiento {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        System.out.print("Ingrese las horas de estacionamiento: ");
        int horas = entrada.nextInt();
        int cobro = 0;
        
        if (horas <= 2) {
            cobro = horas * 30;
        } else if (horas <= 5) {
            cobro = (2 * 30) + ((horas - 2) * 25);
        } else if (horas <= 10) {
            cobro = (2 * 30) + (3 * 25) + ((horas - 5) * 20);
        } else {
            cobro = 380;
        }
        
        System.out.println("El cobro total es: $" + cobro);
    }
}