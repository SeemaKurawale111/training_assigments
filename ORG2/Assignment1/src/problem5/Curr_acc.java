package problem5;

public class Curr_acc extends Account
{
	public void getdata(String name, int accountno, String typeofAcount)
	{
		this.customerName=name;
		this.accountNumber=accountno;
		this.typeOfAccount=typeofAcount;
	}
	public static void main(String[]args)
	{
		Curr_acc c=new Curr_acc();
		c.getdata("Seema",1234,"Current");
		c.display();
		c.deposit(5000);
		c.displayBal();
		c.interest(6);
		c.balChk(1000);
		
	}
	
}
