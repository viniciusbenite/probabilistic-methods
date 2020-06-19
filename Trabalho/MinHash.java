package trabalhoMPEI;

import java.util.Iterator;
import java.util.Set;

import com.google.common.hash.HashFunction;
import com.google.common.hash.Hashing;

public class MinHash {

    private static HashFunction hash = Hashing.murmur3_32();

    //public String hash(String string) {
    public static int hash(Set<String> str) {
        int min = Integer.MAX_VALUE;
        
        Iterator<String> iterator = str.iterator();
        
        while(iterator.hasNext()) {
          String element = (String) iterator.next();
          for (int i=0; i<element.length(); i++) {
              int c = element.charAt(i);
              int n = hash.hashInt(c).asInt();
              if (n < min) {
                  min = Math.abs(n);
              }
          }
        }  
        //return Integer.toHexString(min);
        return min;
    }
}