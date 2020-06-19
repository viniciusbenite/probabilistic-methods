package minHash;

import java.util.Arrays;
import com.google.common.hash.HashFunction;
import com.google.common.hash.Hashing;

public class bloomFilter {
	
	private int k;	//Numero de hash functions
	private long[] bloom;
	private long size;
	private long hash;
	private int elementos;
	
	//Fazer alguma cena para determinar o k optimo caso não seja invocado no construtor
	
	public bloomFilter(long size, int k) {
		this.k = k;
		this.bloom = new long[]{size};
		this.size = size;
		this.elementos = 0;
	}
	
	public void string2hash(String str) {
		for (int i=0 ; i<k ; i++) {
			str += str.substring(i, i+1);
			for(int m = 0; m < str.length(); m++) {
		         hash = str.hashCode() % this.size;	//Mudar isto para ter em conta o size do bloom
		         
		    }
			this.bloom[(int) hash] += 1;
		}
	}
	
	private HashFunction hashMur = Hashing.murmur3_32();
	
	public void AdicionarString (String str) {
		for (int i = 0 ; i < k ; i++) {
			//str += str.substring(i, i);
			for(int m = 0; m < str.length(); m++)
		      {
				int c = str.charAt(i);
				hash = hashMur.hashInt(c).asInt() % this.size;
				// hash = str.hashCode() % this.size;
		      }
			this.bloom[(int)hash] += 1;			
		}
		elementos++;
	}
		
	public void RemoverString (String str) {
			
		if (!this.Pertence(str)) {
			System.out.println("String não pertence ao filter");
			return;
		}
		for (int i=0 ; i<k ; i++) {
		//str += str.substring(i, i+1);
			for(int m = 0; m < str.length(); m++)
			{
				int c = str.charAt(i);
				hash = hashMur.hashInt(c).asInt() % this.size;
				//hash = str.hashCode() % this.size; //Mudar isto para ter em conta o size do bloom
			}
		this.bloom[(int) hash]--;		
		}	
		System.out.println("String removida");
		elementos--;
	}	
	
	public boolean Pertence (String str) {
		for (int i=0 ; i<k ; i++) {
		//str += str.substring(i, i+1);
			for(int m = 0; m < str.length(); m++)
			{
				int c = str.charAt(i);
				hash = hashMur.hashInt(c).asInt() % this.size;
				//hash = str.hashCode() % this.size;
			}
		if (this.bloom[(int) hash] == 0) {
			return false;
		}
		}
		return true;
	}	
	
	public double P_FalsoPositivos() {
		return Math.pow((1- Math.exp((-this.k * this.elementos ) / this.size )), k);
	}	
	
	public void Clear () {
		for (int i = 0 ; i<this.size ; i++) {
			this.bloom[i] = 0;
			elementos = 0;			
		}
		System.out.println("Bloom zerado");
	}

	@Override
	public String toString() {
		return "bloomFilter [k=" + k + ", bloom=" + Arrays.toString(bloom) + ", size=" + size + ", hash=" + hash
				+ ", elementos=" + elementos + "]";
	}
}
