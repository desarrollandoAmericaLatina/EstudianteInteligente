package cl.lsg.estudianteinteligente.junar;


import java.io.IOException;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.DefaultHttpClient;

public class DataStream {
    private String app_key="56ed441d706a59e42557b04b9f205f9a0f9a67f3";
    private String guid="";
    private String base_uri="http://apisandbox.junar.com";
    
    public static void main(String args[]) {
        try {
            DataStream ds = new DataStream("CHILE-INDIC-UF");
            System.out.println("DS INFO : " + ds.info());
        } catch (ClientProtocolException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    
    public DataStream(String p_guid) {
        this.setGUID(p_guid);
    }
    
    public String getGUID() {
        return guid;
    }
    
    public String getAuthKey() {
        return this.app_key;
    }
    public void setGUID(String p_guid) {
        guid = p_guid;
    }
    
    public String invoke(String[] p_params) throws ClientProtocolException, IOException {
        String url = "/datastreams/invoke/" + getGUID() + "?";
        url += "auth_key=" + app_key;
        
        for (int i=0; i < p_params.length; i++) {
            url += "&pArgument" + i + "=" + p_params[i];
        }
        return callURI(url);
    }
    
    public String info() throws ClientProtocolException, IOException {
        String url = "/datastreams/" + getGUID() + "?auth_key=" + getAuthKey();
        return callURI(url);
    }
    
    private String callURI(String p_url) throws ClientProtocolException, IOException {
        HttpClient http_client = new DefaultHttpClient();
        String response_body = "";
        String final_url = this.base_uri + p_url;
        
        System.out.println("URL: " + final_url);
        try {
            HttpGet httpget = new HttpGet(final_url);

            ResponseHandler<String> responseHandler = new BasicResponseHandler();
            response_body = http_client.execute(httpget, responseHandler);
        } finally {
            http_client.getConnectionManager().shutdown();
        }
        
        return response_body;
    }
}
