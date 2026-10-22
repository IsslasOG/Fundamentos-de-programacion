package com.mycompany.uaeh;

import java.util.Scanner;

public class Cola {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        int max = 5;
        int[] cola = new int[max];
        int frente = 0;
        int fin = -1;
        int cantidadElementos = 0;
        int opcion;

        do {
            System.out.println("\n--- MENU COLA ---");
            System.out.println("1. Insertar");
            System.out.println("2. Eliminar");
            System.out.println("3. Mostrar cola");
            System.out.println("4. Eliminar un dato");
            System.out.println("5. Salir");
            System.out.print("Elija una opcion: ");
            opcion = entrada.nextInt();

            switch (opcion) {
                case 1:
                    if (cantidadElementos == max) {
                        System.out.println("¡Error! Cola llena (Overflow). No se pueden agregar mas elementos.");
                    } else {
                        System.out.print("Ingrese el valor entero a insertar: ");
                        int valor = entrada.nextInt();
                        fin = (fin + 1) % max;
                        cola[fin] = valor;
                        cantidadElementos++;
                        System.out.println("Elemento " + valor + " insertado en la posicion [" + fin + "].");
                    }
                    break;

                case 2:
                    if (cantidadElementos == 0) {
                        System.out.println("¡Error! Cola vacia (Underflow). No hay elementos para atender.");
                    } else {
                        System.out.println("Elemento atendido y retirado del frente: " + cola[frente]);
                        frente = (frente + 1) % max;
                        cantidadElementos--;
                    }
                    break;

                case 3:
                    if (cantidadElementos == 0) {
                        System.out.println("La cola esta vacia.");
                    } else {
                        System.out.println("\nElementos formados actualmente en la cola (FIFO):");
                        int indice = frente;
                        for (int i = 0; i < cantidadElementos; i++) {
                            System.out.println("Posicion [" + indice + "] -> " + cola[indice]);
                            indice = (indice + 1) % max;
                        }
                    }
                    break;

                case 4:
                    if (cantidadElementos == 0) {
                        System.out.println("La cola esta vacia.");
                    } else {
                        System.out.print("Ingrese el numero que desea eliminar: ");
                        int valorBuscado = entrada.nextInt();
                        boolean encontrado = false;
                        int nuevosElementos = 0;
                        int indice = frente;

                        for (int i = 0; i < cantidadElementos; i++) {
                            if (cola[indice] == valorBuscado) {
                                encontrado = true;
                                break;
                            }
                            nuevosElementos++;
                            indice = (indice + 1) % max;
                        }

                        if (encontrado) {
                            cantidadElementos = nuevosElementos;
                            if (cantidadElementos == 0) {
                                fin = -1;
                            } else {
                                fin = (frente + cantidadElementos - 1) % max;
                            }
                            System.out.println("El numero ha sido eliminado de la cola.");
                        } else {
                            System.out.println("El numero no se encuentra en la cola.");
                        }
                    }
                    break;

                case 5:
                    System.out.println("Saliendo del programa...");
                    break;

                default:
                    System.out.println("Opcion no valida, intente de nuevo.");
            }
        } while (opcion != 5);
    }
}