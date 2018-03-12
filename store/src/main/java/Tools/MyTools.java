package Tools;


import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MyTools {
	private static long orderNum = 0l;  
	private static String date ;  
	 
	//加密
	public final String md5(String s) 
	{
	    try
	    {
	        // Create MD5 Hash
	        MessageDigest digest = java.security.MessageDigest.getInstance("MD5");
	        digest.update(s.getBytes());
	        byte messageDigest[] = digest.digest();
	 
	        // Create Hex String
	        StringBuffer hexString = new StringBuffer();
	        for(int i=0; i<messageDigest.length; i++)
	        {
	            hexString.append(Integer.toHexString(0xFF & messageDigest[i]));
	        }
	        return hexString.toString();
	    } 
	    catch (NoSuchAlgorithmException e) 
	    {
	        e.printStackTrace();
	    }
	    return "";
	}
	
	//解密
	   
	//
	public int[] getRandomNum(){
		int [] arr = new int[6];
		int num = 0;
		for(int i=0;i<arr.length;i++){
			num = (int)(Math.random()*9)+1;
			arr[i] = num;
			System.out.print(arr[i]);
		}	
		return arr;
	}
	
	public synchronized String getOrderNo() throws InterruptedException {  
        String str = new SimpleDateFormat("yyyyMMdd").format(new Date());  
        if(date==null||!date.equals(str)){  
            date = str;  
            orderNum  = 0l;  
        }  
        orderNum ++;  
        long orderNo = Long.parseLong((date)) * 10000;  
        orderNo += orderNum;;  
        Thread.sleep(1000);
        return orderNo+"";  
    }
}
