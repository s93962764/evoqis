package tesTing;
class A
{
	public static void m1()
	{
		
	}
}
class B extends A
{
	public void m1()
	{
		
	}
}
public class OverrindingStatic {
	public static void main(String[] args) {
		
		A a=new A();
		a.m1();
		
		B b=new B();
		b.m1();
		
		A a1=new B();
		//a1.m1();
		
	}

}
