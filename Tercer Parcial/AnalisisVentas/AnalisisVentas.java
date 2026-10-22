package com.mycompany.uaeh;

import java.util.Arrays;
import java.util.Scanner;

public class AnalisisVentas {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.print("Ingrese el numero de sucursales: ");
        int numSucursales = entrada.nextInt();

        double[][] ventas = new double[numSucursales][12];
        String[] meses = {"Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", 
                          "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"};

        System.out.println("\n--- Registro de ventas mensuales por sucursal ---");
        for (int i = 0; i < numSucursales; i++) {
            System.out.println("Sucursal " + (i + 1) + ":");
            for (int j = 0; j < 12; j++) {
                System.out.print("  Ventas en " + meses[j] + ": ");
                ventas[i][j] = entrada.nextDouble();
            }
        }

        double[] totalesAnuales = new double[numSucursales];
        double[] promediosMensuales = new double[numSucursales];
        int[] mejorMes = new int[numSucursales];
        double sumaGlobal = 0;

        for (int i = 0; i < numSucursales; i++) {
            double sumaSucursal = 0;
            double maxVentaMes = ventas[i][0];
            int mesMax = 0;

            for (int j = 0; j < 12; j++) {
                sumaSucursal += ventas[i][j];
                if (ventas[i][j] > maxVentaMes) {
                    maxVentaMes = ventas[i][j];
                    mesMax = j;
                }
            }
            totalesAnuales[i] = sumaSucursal;
            promediosMensuales[i] = sumaSucursal / 12.0;
            mejorMes[i] = mesMax;
            sumaGlobal += sumaSucursal;
        }

        double promedioGlobal = sumaGlobal / numSucursales;

        System.out.println("\n=== REPORTE DE VENTAS POR SUCURSAL ===");
        for (int i = 0; i < numSucursales; i++) {
            System.out.println("Sucursal " + (i + 1) + ":");
            System.out.println("  Total anual: " + totalesAnuales[i]);
            System.out.println("  Promedio mensual: " + promediosMensuales[i]);
            System.out.println("  Mejor mes: " + meses[mejorMes[i]] + " (" + ventas[i][mejorMes[i]] + ")");
        }

        System.out.println("\nPromedio global de ventas anuales: " + promedioGlobal);
        System.out.println("Sucursales con ventas anuales superiores al promedio global:");
        for (int i = 0; i < numSucursales; i++) {
            if (totalesAnuales[i] > promedioGlobal) {
                System.out.println("  - Sucursal " + (i + 1) + " con " + totalesAnuales[i]);
            }
        }

        class SucursalVenta implements Comparable<SucursalVenta> {
            int id;
            double total;

            public SucursalVenta(int id, double total) {
                this.id = id;
                this.total = total;
            }

            @Override
            public int compareTo(SucursalVenta o) {
                return Double.compare(o.total, this.total);
            }
        }

        SucursalVenta[] ranking = new SucursalVenta[numSucursales];
        for (int i = 0; i < numSucursales; i++) {
            ranking[i] = new SucursalVenta(i + 1, totalesAnuales[i]);
        }

        Arrays.sort(ranking);

        System.out.println("\n=== RANKING DE SUCURSALES (Por ventas anuales) ===");
        for (int i = 0; i < numSucursales; i++) {
            System.out.println((i + 1) + ". Sucursal " + ranking[i].id + " - Total: " + ranking[i].total);
        }

        double[] copiaTotales = Arrays.copyOf(totalesAnuales, totalesAnuales.length);
        Arrays.sort(copiaTotales);
        System.out.println("\nTotales anuales ordenados (Arrays.toString): " + Arrays.toString(copiaTotales));
    }
}