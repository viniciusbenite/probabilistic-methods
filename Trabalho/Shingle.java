package minHash;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Set;

import com.google.common.collect.Sets;

public class Shingle {
	
	private String END_LINE[] = {".",",","!","?",":",";","-","\\","/","*","(",")"};
	private int SHINGLE_SIZE = 3;
	private ArrayList<String> arrShingle = new ArrayList<String>();
	
	private String canonize(String str) {		
		// Uniformizar		
		for (String endLine : END_LINE) {
			str = str.replace(endLine, "");
		}
		return str;
	}
	
	public ArrayList<String> createShingle(String newStr) {
		
		String str = canonize(newStr.toLowerCase());
		String words[] = str.split(" ");
		int numberShingles = words.length - SHINGLE_SIZE;
		String shingles = "";
		
		//Crirar shingles
		 
        for (int i = 0; i <= numberShingles; i++) { 
            String shingle = ""; 
 
            //Criar UM shingle
            for (int j = 0; j < SHINGLE_SIZE; j++) { 
                shingle = shingle + words[i+j] + " ";
            }
            
            arrShingle.add(shingle);
            shingles = shingles + shingle.hashCode() + ";"; // ???
            
        } 
 
        return arrShingle;
	}
	
	public static float jaccardCoef(Set<String> shinglesA,
		      Set<String> shinglesB) {
		
		    float a = Sets.intersection(shinglesA, shinglesB).size();
		    float b = Sets.union(shinglesA, shinglesB).size();
		    return a / b;
		}
	
//	public int compare(ArrayList<String> ss, ArrayList<String> ss2) { 
//        //textShingles1New and textShingles2New equals "" or null bug fix 
//        if (ss.equals("")  || ss2.equals("")  || 
//            ss.equals(" ") || ss2.equals(" ") || 
//            ss == null     || ss2 == null)       return 0; 
// 
//        String textShingles1[] = Arrays.asList(ss.split(";"));//ss.split(";"); 
//        String textShingles2[] = ss2.split(";"); 
// 
//        int textShingles1Number = textShingles1.length; 
//        int textShingles2Number = textShingles2.length; 
// 
//        int textShingles1Int[] = new int[textShingles1Number]; 
//        int textShingles2Int[] = new int[textShingles2Number]; 
// 
//        for (int i=0; i<textShingles1Number;i++) { 
//            textShingles1Int[i] = Integer.parseInt(textShingles1[i]); 
//        } 
//        for (int i=0; i<textShingles2Number;i++) { 
//            textShingles2Int[i] = Integer.parseInt(textShingles2[i]); 
//        } 
// 
//        double similarShinglesNumber = 0; 
// 
//        for (int i=0;i<textShingles1Number;i++) { 
//            for (int j=0;j<textShingles2Number;j++) { 
//                if (textShingles1Int[i] == textShingles2Int[j]) similarShinglesNumber++; 
//            } 
//        } 
// 
//        return (int) ((similarShinglesNumber / ((textShingles1Number + textShingles2Number) / 2.0)));
//	}
}
