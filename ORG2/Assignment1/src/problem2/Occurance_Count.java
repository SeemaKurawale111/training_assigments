package problem2;

import java.io.*;
import java.util.Scanner;

public class Occurance_Count 
{

    public static void main(String args[])throws IOException
    {
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
        System.out.print("Enter any number : ");
        int n = Integer.parseInt(br.readLine());
 
        int freq[]=new int[10]; 
 
        for(int i=0; i<10; i++)
            {
                freq[i]=0; 
            }
 
        System.out.println("Output:");
    	System.out.println("Digit\tFrequency");
     
 
        int d;
        while(n>0)
        {
            d=n%10; 
            freq[d]++; 
            n=n/10;
        }
             
        for(int i=0; i<10; i++)
            {
                if(freq[i]!=0) 
                    System.out.println("   "+i+"\t    "+freq[i]);
            }
        }
}
