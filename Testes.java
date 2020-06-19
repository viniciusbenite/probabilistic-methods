package trabalhoMPEI;

import java.util.*;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

public class Testes {

	public static void main(String[] args) throws FileNotFoundException {
		// TODO Auto-generated method stub
		
		//Ler documentos
		String doc1 = new Scanner(new File("./src/trabalhoMPEI/ola.txt")).useDelimiter("\\Z").next();
		String doc2 = new Scanner(new File("./src/trabalhoMPEI/ola2.txt")).useDelimiter("\\Z").next();
		
		System.out.println("teste Shingles: \n");
        
//		String str = "A aranha arranha a rã. \n" + 
//				"A rã arranha a aranha. \n" + 
//				"Nem a aranha arranha a rã. \n" + 
//				"Nem a rã arranha a aranha."; 
//		String str2 = "Num ninho de mafagafos há sete mafagafinhos. \n" + 
//				"Quando a mafagafa gafa, gafam os sete mafagafinhos.\n" + 
//				"Pulando linhas?";
//      Set<String> ss3 = Shingles.shingles(str);
//      Set<String> ss4 = Shingles.shingles(str2);
//      System.out.printf("Set of shingles: %s\n", ss3);
//      System.out.printf("Set of shingles: %s\n", ss4);
   
		Set<String> ss = trabalhoMPEI.Shingles.shingles(doc1);
		Set<String>ss2 = trabalhoMPEI.Shingles.shingles(doc2);
//	    System.out.printf("Set of shingles doc1: %s\n", ss);
//	    System.out.println("----------------------------");
//	    System.out.printf("Set of shingles doc2: %s\n", ss2);
//	    System.out.println("");		
        
        int aleatorio[] = new int [100];
    	for (int i =0 ; i<100 ; i++) {
    		aleatorio[i] = (int)(Math.random()*Integer.MAX_VALUE);
    	}
        
        int[] minimos = MinHash.minhash(ss, aleatorio);
        int[] minimos2 = MinHash.minhash(ss2, aleatorio);
        
        for (int i = 0; i < minimos.length; i++) {	
        	System.out.printf(" %s", minimos[i]);
        }
        System.out.println("\n");
        for (int i = 0 ; i < minimos2.length ; i++) {
        	System.out.printf(" %s",minimos2[i]);
        }
        System.out.println("\n");
        double kk = MinHash.Similaridade(minimos, minimos2); 
        System.out.printf("Similaridade: %f\n",kk);
        System.out.printf("ola: %f", Shingles.JaccardSin(ss,ss2));
        
//		BloomFilter a = new BloomFilter(10,3);
//		
//		System.out.println("\n");
//		a.AdicionarString("Aveiro");
//		a.AdicionarString("Porto");
//		//a.AdicionarString("Braga");
//		
//		System.out.println(a.Pertence("Aveiro"));
//		System.out.println(a.Pertence("Lisboa"));
//				
//		System.out.println(a.toString());
//		
//		a.RemoverString("Aveiro");
//		a.RemoverString("Lisboa");
//		
//		System.out.println(a.toString());
//		
//		System.out.println("Falsos positivos: ");
//		System.out.println(a.P_FalsoPositivos());	//Confirmar depois com ficheiros
//		
//		a.Clear();
//		
//		System.out.println(a.toString());
	}

}
