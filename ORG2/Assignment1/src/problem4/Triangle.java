package problem4;

import java.util.Scanner;

public class Triangle extends Shape
{
	double T_area;
	
	
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
		T_area = 0.5 * height * width;
		System.out.println("Area of the Triangle :"+T_area);
	}
	
	public static void main(String[] args) 
	{
		Triangle t = new Triangle();
		t.get_data();
		t.display_area();
	}


}
