package tesTing;
class e
{
	public void m1(int... x)
	{
		System.out.println(x);
		
	}
}
class f extends e
{
	public void m1(int...x)
	{
		int[] a=x;
		System.out.println(a[0]);
	}
}
public class OverrdingVar_agr {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		e e1=new e();
		e1.m1(10);
		
		f f1=new f();
		f1.m1(11,11);
		
		e e2=new f();
		e2.m1(10);

	}

}
