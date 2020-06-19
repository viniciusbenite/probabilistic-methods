package trabalhoMPEI;

import java.util.*;

import com.google.common.hash.HashFunction;
import com.google.common.hash.Hashing;

public class MinHash {
	
	public static int[] minhash(Set<String> str, int[] aleatorio) {	
		
	ArrayList<Integer> myHash = new ArrayList<Integer>();
	Iterator<String> iterator = str.iterator();
	int minimos[] = new int [100];
	int min = 0;
	
	while(iterator.hasNext()) {
		String element = (String) iterator.next();
		min = Integer.MAX_VALUE;
		int hash = 0;
		for (int j=0; j<element.length(); j++) {
			hash = str.hashCode();
			if (hash < min) {
				min = hash;				
			}
		}
		myHash.add(hash);
	}
	minimos[0] = min;
	for (int k = 1 ; k < 100 ; k++) {
		min = Integer.MAX_VALUE;
		for (int l = 0 ; l <100 ; l++) {
			if ((myHash.get(l) ^ aleatorio[k]) < min) {
				min = (myHash.get(l) ^ aleatorio[k]); 
			}
		}
	minimos[k] = min;
	}	
	return minimos;
	}
	
	public static double Similaridade(int[] minimos, int[] minimos2) {
		
		int similares = 0;
		for (int i = 0 ; i < minimos.length ; i++) {
			for (int j = 0 ; j < minimos2.length ; j++) {
				if (minimos[i] == minimos2[j]) {
					similares++;
				}
			}
		}
		System.out.println(similares);		
		return (similares / (200 - similares));
	}
}

	