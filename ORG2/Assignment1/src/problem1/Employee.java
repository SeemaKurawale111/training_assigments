package problem1;

public class Employee 
{
    String	name;
	int employee_id;
	int age;
	String marital_status;
	int salary;
	
	public Employee(String eName, int eId, int eAge, String eMarried, int eSalary) 
	{
		this.name=eName;
		this.employee_id=eId;
		this.age=eAge;
		this.marital_status=eMarried;
		this.salary=eSalary;
	}

	public void display() 
	{
		System.out.println();
		System.out.println("Name       :"+name);
		System.out.println("Employee Id:"+employee_id);
		System.out.println("Age        :"+age);
		System.out.println("Married    :"+marital_status);
		System.out.println("Salary     :"+salary);	
		System.out.println();
	}

	public static void main(String[] arg)
	{
		Employee e1 = new Employee("Seema",10,22,"Single",15000);
		Employee e2 = new Employee("Swapnil",12,30,"Married",55000);
		Employee e3 = new Employee("Kaveeta",15,40,"Married",55000);
		e1.display();
		e2.display();
		e3.display();
	}


}


