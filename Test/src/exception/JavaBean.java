package exception;

public class JavaBean {

	private String s;
	public void setName(String name)
	{
		this.s=name;
	}
	
	public String getName()
	{
		return s;
	}
	public static void main(String[] args, String suhas) {
		// TODO Auto-generated method stub

	JavaBean jb=new JavaBean();
	jb.setName(suhas);
	jb.getClass();
		
	}

}
