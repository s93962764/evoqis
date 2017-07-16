
public class Test {
	public static void main(String[] args) {
		String str="hey sachya lavdya";
		String tempStr, sachin="sachya";
	//	String s1=" ";
		
		char []s=str.toCharArray();
		char []temp=new char[s.length];
		//char []space=s1.toCharArray();
		
		//int index=0;
		
		for(int i=0;i<=s.length-1;i++)
		{
			temp[i]=s[i];
			if(s[i]==(' '))
			{
				System.out.println("ooooooooo");
				tempStr=temp.toString();
				if(tempStr.equalsIgnoreCase(sachin))
				{
					System.out.println(tempStr);
				}
			}
			else
			{
			System.out.println("---------------");
				//s2=index.toString();
				//tempStr=index.toString();
			}
		}
		
	//System.out.println("Sachin S. Patil");
	}

}
