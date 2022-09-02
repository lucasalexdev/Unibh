package java;
import java.util.Scanner;
public class ExecícioJava1 {
    
    public static void main(String[] args) {
        
        // Desenvolva um programa que receba um número inteiro e exiba se o número é, ao mesmo tempo, múltiplo de 3 e 5.
       //  Considerando que o símbolo % realiza cálculos de resto da divisão, a lógica implementada considera que um 
       //  número é múltiplo de 3 e 5 quando o resto da divisão deste número por 3 e 5 é igual a 0.
    Scanner ler = new Scanner(System.in);
     int numero;
     
     System.out.println("Digite um número:");
     numero = ler.nextInt();
     
     if(numero % 3 ==0 && numero % 5 ==0 ){ 
         System.out.println("Este número é multiplo de 3 e 5 ");
         
     }else{
         System.out.println("Este número não é multiplo de 3 e 5");
     }
    }
    
}
