package problem4;

import java.util.Scanner;

public class Rectangle extends Shape
{
	double R_area;
	
	public void get_data ()
	{
		Scanner in = new Scanner(System.in);
		System.out.println("Enter Height : ");
	    height= in.nextInt();
		System.out.println("Enter Width : ");
	    width= in.nextInt();
	}
	public void display_area() 
	{
		R_area = height * width;
		System.out.println("Area of the Rectangle :"+R_area);
		
	}

	public static void main(String[] args) 
	{
		Rectangle r = new Rectangle();
		r.get_data();
		r.display_area();
	}

}
