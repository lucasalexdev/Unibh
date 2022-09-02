//A Secretaria de Meio Ambiente que controla o índice de poluição mantém 3 grupos de indústrias que
    // são altamente poluentes do meio ambiente. O índice de poluição aceitável varia de 0,05 até 0,25.
    // Se o índice sobe para 0,3 as indústrias do 1º grupo são intimadas a suspenderem suas atividades,
    // se o índice crescer para 0,4 as indústrias do 1º e 2º grupo são intimadas a suspenderem suas atividades,
    // se o índice atingir 0,5 todos os grupos devem ser notificados a paralisarem suas atividades. 
    //Faça um algoritmo em JAVA que leia o índice de poluição medido e emita a notificação adequada aos diferentes
     //grupos de empresas.
     import java.util.Scanner;
public class ExercícioJava2 {
    public static void main(String[] args) {
        
        
       Scanner ler = new Scanner(System.in);
       double numero;
       
       System.out.println("Digite o índice de poluição: ");
       numero = ler.nextDouble();
       
       if (numero>=0 && numero<=0.25){
           System.out.println("O índice de poluição está aceitável!");
       }
       if (numero>=0.3){
           System.out.println("Suspenda atividades das indústrias do 1° Grupo");
       }
       if (numero>=0.4){
           System.out.println("Suspenda atividades das indústrias do 2° Grupo");
       }
        if (numero>=0.5){
           System.out.println("Suspenda atividades das indústrias do 3° Grupo");
       }
       	
    }
}
