package trabalhoMPEI;

public class String2Hash {

	public static void main(String[] args) {
		
		String str = "asd";		
		
		long hash = 0;

	    for(int i = 0; i < str.length(); i++) {
	         
	    	hash = str.charAt(i) + (hash << 6) + (hash << 16) - hash;
	    }

	     // System.out.println(hash);	      
	      
	      //BlomFiter a = new BlomFiter(1000);
	}
}
