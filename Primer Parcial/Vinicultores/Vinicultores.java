import java.util.Scanner;
public class Vinicultores {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Ingrese los kilos de uva entregados: ");
        double kilos = scanner.nextDouble();

        System.out.print("Ingrese el precio inicial por kilo ($): ");
        double precioinicial = scanner.nextDouble();

        System.out.print("Ingrese el tipo de uva (A o B): ");
        String tipo = scanner.next().toUpperCase();

        System.out.print("Ingrese el tamaño de la uva (1 o 2): ");
        int tamano = scanner.nextInt();

        double preciofinal = precioinicial;

        if (tipo.equals("A")) {
            if (tamano == 1) {
                preciofinal += 0.20;
            } else if (tamano == 2) {
                preciofinal += 0.30;
            } else {
                System.out.println("Tamano no válido.");
            }
        } else if (tipo.equals("B")) {
            if (tamano == 1) {
                preciofinal -= 0.30;
            } else if (tamano == 2) {
                preciofinal -= 0.50;
            } else {
                System.out.println("Tamano no válido.");
            }
        } else {
            System.out.println("Tipo no válido.");
        }

        double ganancia = kilos * preciofinal;

        System.out.printf("El precio final por kilo es: $%.2f%n", preciofinal);
        System.out.printf("La ganancia total del embarque es: $%.2f%n", ganancia);

        scanner.close();
    }
}    
