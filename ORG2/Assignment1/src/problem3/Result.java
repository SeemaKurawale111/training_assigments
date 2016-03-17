package problem3;

import java.util.Scanner;

public class Result extends Test
{
	int total;
	public void CalculateResult()
	{
		total = subj1 + subj2;
		System.out.println("Total Marks :"+total);
	}
	
	public static void main(String[] args) 
	{
		Result r = new Result();
		r.getMarks();
		r.CalculateResult();
	}

}
