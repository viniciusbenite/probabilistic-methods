package trabalhoMPEI;

import java.util.Set;

public class Testes {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
//		String p = "hello world";
//		long hs = p.hashCode();
//		System.out.println(hs);
		
//		MinHash minHash = new MinHash();
//        System.out.println(minHash.hash("Aveiro"));
//        System.out.println(minHash.hash("Lisboa"));
        
        
        System.out.println("teste Shingles: \n");
        
        String str = "The quick brown fox jumps over the lazy dog"; 
        String str2 = "Num ninho de mafagafos há sete mafagafinhos. Quando a mafagafa gafa, gafam os sete mafagafinhos.";
        Shingles Shingles = new Shingles(); 
        MinHash hash = new MinHash();
        Set<String> ss = Shingles.shingles(str);
        Set<String> ss2 = Shingles.shingles(str2);
        System.out.printf("Set of shingles: %s\n", ss);
        System.out.printf("Set of shingles: %s\n", ss2);      
        System.out.println(Shingles.JaccardSin(ss,ss2));
        
        int myHash = MinHash.hash(ss);
        System.out.printf("Minhash do shingle: %s\n", myHash);
        /*
		bloom a = new bloom(10,3);
		
		
		a.AdicionarString("Aveiro");
		a.AdicionarString("Porto");
		//a.AdicionarString("Braga");
		
		System.out.println(a.Pertence("Aveiro"));
		System.out.println(a.Pertence("Lisboa"));
				
		System.out.println(a.toString());
		
		a.RemoverString("Aveiro");
		a.RemoverString("Lisboa");
		
		System.out.println(a.toString());
		
		System.out.println("Falsos positivos: ");
		System.out.println(a.P_FalsoPositivos());	//Confirmar depois com ficheiros
		
		a.Clear();
		
		System.out.println(a.toString());*/
	}

}
