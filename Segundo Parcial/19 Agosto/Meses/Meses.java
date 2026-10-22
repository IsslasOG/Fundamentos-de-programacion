package com.mycompany.uaeh;

import java.util.Scanner;

public class Meses {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int repetir;
        
        do {
            System.out.print("Ingrese el numero de mes (1-12): ");
            int mes = entrada.nextInt();
            
            switch (mes) {
                case 1:
                    System.out.println("Enero - 31 dias");
                    break;
                case 2:
                    System.out.println("Febrero - 28 dias");
                    break;
                case 3:
                    System.out.println("Marzo - 31 dias");
                    break;
                case 4:
                    System.out.println("Abril - 30 dias");
                    break;
                case 5:
                    System.out.println("Mayo - 31 dias");
                    break;
                case 6:
                    System.out.println("Junio - 30 dias");
                    break;
                case 7:
                    System.out.println("Julio - 31 dias");
                    break;
                case 8:
                    System.out.println("Agosto - 31 dias");
                    break;
                case 9:
                    System.out.println("Septiembre - 30 dias");
                    break;
                case 10:
                    System.out.println("Octubre - 31 dias");
                    break;
                case 11:
                    System.out.println("Noviembre - 30 dias");
                    break;
                case 12:
                    System.out.println("Diciembre - 31 dias");
                    break;
                default:
                    System.out.println("Numero de mes invalido");
                    break;
            }
            
            System.out.print("¿Desea repetir? (1: Si / 0: No): ");
            repetir = entrada.nextInt();
        } while (repetir == 1);
    }
}