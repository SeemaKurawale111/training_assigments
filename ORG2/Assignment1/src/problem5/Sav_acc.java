package problem5;

public class Sav_acc extends Account
{
	public void getdata(String name, int accountno, String typeofAcount)
	{
		this.customerName=name;
		this.accountNumber=accountno;
		this.typeOfAccount=typeofAcount;
	}
	public static void main(String[]args)
	{
		Sav_acc s=new Sav_acc();
		s.getdata("Seema",1234,"Savings");
		s.display();
		s.deposit(5000);
		s.displayBal();
		s.interest(6);
		s.balChk(1000);
	}

}
