package com.mycompany.uaeh;

import java.util.Scanner;

public class Consultorio {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        System.out.print("Ingrese el numero de cita: ");
        int numerocita = entrada.nextInt();
        
        double costocita = 0;
        double totalpagado = 0;
        
        if (numerocita <= 3) {
            costocita = 900;
            totalpagado = numerocita * 900;
        } else if (numerocita <= 5) {
            costocita = 800;
            totalpagado = (3 * 900) + ((numerocita - 3) * 800);
        } else if (numerocita <= 8) {
            costocita = 600;
            totalpagado = (3 * 900) + (2 * 800) + ((numerocita - 5) * 600);
        } else {
            costocita = 500;
            totalpagado = (3 * 900) + (2 * 800) + (3 * 600) + ((numerocita - 8) * 500);
        }
        
        System.out.println("Costo de esta cita: $" + costocita);
        System.out.println("Monto total pagado hasta esta cita: $" + totalpagado);
    }
}