package problem3;

import java.util.Scanner;

public class Test extends Student  
{
	public int subj1;
	public int subj2;
	
	public void getMarks()
	{
		Scanner in = new Scanner(System.in);
		System.out.println("Enter Marks of Subject 1 : ");
	    subj1= in.nextInt();
		System.out.println("Enter Marks of Subject 1 : ");
	    subj2= in.nextInt();
	}
}
