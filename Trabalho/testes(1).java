package minHash;

import java.util.ArrayList;
import java.util.Set;

public class testes {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
//		String p = "hello world";
//		long hs = p.hashCode();
//		System.out.println(hs);
		
		minHash minHash = new minHash();
        System.out.println(minHash.hash("Aveiro"));
        System.out.println(minHash.hash("Lisboa"));
        
        
        System.out.println("teste Shingles: ");
        
        String str = "O rato roeu a roupa do rei de roma uuueueueuah ueahueae"; 
        String str2 = "Não confunda\n" + 
        		"Ornitorrinco com\n" + 
        		"Otorrinolaringologista,\n" + 
        		"Ornitorrinco com ornitologista,\n" + 
        		"Ornitologista com\n" + 
        		"Otorrinolaringologista,\n" + 
        		"Porque ornitorrinco\n" + 
        		"É ornitorrinco,\n" + 
        		"Ornitologista é ornitologista\n" + 
        		"E otorrinolaringologista é\n" + 
        		"Otorrinolaringologista. ";
        Shingle2 Shingle2 = new Shingle2(); 
        Set<String> ss = Shingle2.shingles(str);
        Set<String> ss2 = Shingle2.shingles(str2);
        System.out.println(ss);
        System.out.println(ss2);
//        System.out.println(Shingle.compare(ss,ss));
        System.out.println(jaccard_similarity_coeff(ss,ss2));
        
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
