package leo;

import java.io.IOException;

import org.apache.http.client.ClientProtocolException;

public class Junar {
	
	
	public static void main(String[] args) throws ClientProtocolException, IOException {
		
		
		DataStream ds = new DataStream("CHILE-INDIC-UF");

		System.out.println("DS INFO : " + ds.invoke(args));


	}
	

}
