package minHash;

import com.google.common.hash.HashFunction;
import com.google.common.hash.Hashing;

public class minHash {

    private HashFunction hash = Hashing.murmur3_32();

    //public String hash(String string) {
    public int hash(String string) {
        int min = Integer.MAX_VALUE;
        for (int i=0; i<string.length(); i++) {
            int c = string.charAt(i);
            int n = hash.hashInt(c).asInt();
            if (n < min) {
                min = Math.abs(n);
            }
        }
        //return Integer.toHexString(min);
        return min;
    }
}