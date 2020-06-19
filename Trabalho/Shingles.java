package trabalhoMPEI;

import java.util.HashSet;
import java.util.Set;
import com.google.common.collect.Sets;

public class Shingles {

  public static final int SHINGLE_SIZE = 3;
  
  public static Set<String> shingles(String str) {

    HashSet<String> shingles = new HashSet<String>();
    String words[] = str.split(" "); //TODO -> read file
    int numberShingles = words.length - SHINGLE_SIZE;

    for (int i = 0; i <= numberShingles; i++) { 
        String shingle = ""; 
        
        for (int j = 0; j < SHINGLE_SIZE; j++) { 
            shingle = shingle + words[i+j] + " ";
        }
        shingles.add(shingle);
    }
	return shingles;
  }

  public static float JaccardSin(Set<String> shinglesA, Set<String> shinglesB) {
	  
    float a = Sets.intersection(shinglesA, shinglesB).size();
    float b = Sets.union(shinglesA, shinglesB).size();

    return a / b;
  }
}