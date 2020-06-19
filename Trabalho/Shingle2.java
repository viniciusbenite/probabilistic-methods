package minHash;

import java.util.HashSet;
import java.util.Set;

import com.google.common.collect.Sets;

/**
 * very basic (character based) shingle support
 * 
 * @author rana
 * 
 */
public class Shingle2 {

  public static final int SHINGLE_SIZE = 3;

  public static Set<String> shingles(String str) {

    HashSet<String> shingles = new HashSet<String>();
    String words[] = str.split(" ");
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

  public static float jaccard_similarity_coeff(Set<String> shinglesA,
      Set<String> shinglesB) {
    float neumerator = Sets.intersection(shinglesA, shinglesB).size();
    float denominator = Sets.union(shinglesA, shinglesB).size();
    return neumerator / denominator;
  }
}