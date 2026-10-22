package com.mycompany.uaeh;

import java.util.Scanner;

public class Pila {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        int max = 5;
        int[] pila = new int[max];
        int tope = -1;
        int opcion;

        do {
            System.out.println("\n--- MENU PILA ---");
            System.out.println("1. Push");
            System.out.println("2. Pop");
            System.out.println("3. Mostrar pila");
            System.out.println("4. Eliminar un dato:");
            System.out.println("5. Salir");
            System.out.print("Elija una opcion: ");
            opcion = entrada.nextInt();

            switch (opcion) {
                case 1:
                    if (tope == max - 1) {
                        System.out.println("¡Error! Desbordamiento (Overflow): La pila esta llena.");
                    } else {
                        System.out.print("Ingrese el valor entero a insertar: ");
                        int valor = entrada.nextInt();
                        tope++;
                        pila[tope] = valor;
                        System.out.println("Elemento " + valor + " agregado al tope.");
                    }
                    break;

                case 2:
                    if (tope < 0) {
                        System.out.println("¡Error! Subdesbordamiento (Underflow): La pila esta vacia.");
                    } else {
                        System.out.println("Elemento eliminado del tope: " + pila[tope]);
                        tope--;
                    }
                    break;

                case 3:
                    if (tope < 0) {
                        System.out.println("La pila esta vacia, no hay elementos que mostrar.");
                    } else {
                        System.out.println("\nEstado actual de la pila (LIFO - Del tope hacia abajo):");
                        for (int i = tope; i >= 0; i--) {
                            System.out.println("Posicion [" + i + "] -> " + pila[i]);
                        }
                    }
                    break;

                case 4:
                    if (tope < 0) {
                        System.out.println("La pila esta vacia.");
                    } else {
                        System.out.print("Ingrese el numero que desea eliminar: ");
                        int valorBuscado = entrada.nextInt();
                        boolean encontrado = false;
                        int nuevoTope = tope;

                        for (int i = tope; i >= 0; i--) {
                            if (pila[i] == valorBuscado) {
                                encontrado = true;
                                break;
                            }
                            nuevoTope--;
                        }

                        if (encontrado) {
                            tope = nuevoTope - 1;
                            System.out.println("El numero ha sido eliminado.");
                        } else {
                            System.out.println("El numero no se encuentra en la pila.");
                        }
                    }
                    break;

                case 5:
                    System.out.println("Saliendo del programa de Pilas...");
                    break;

                default:
                    System.out.println("Opcion no valida, intente de nuevo.");
            }
        } while (opcion != 5);
    }
}