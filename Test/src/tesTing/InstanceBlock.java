package tesTing;

public class InstanceBlock {

	int j=10;
	//@instance block
	{
		m1();
		System.out.println("frst instance block");
	}
	InstanceBlock()
	{
		System.out.println("this is constructor");
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		InstanceBlock IB=new InstanceBlock();
		
		System.out.println("this main");

	}
	//@instance block
	{
		System.out.println("Second instance block");
	}
	public void m1()
	{
		System.out.println(j);
	}

}
