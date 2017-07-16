import java.util.*;
public class duparray 
{

		private static final String ve = null;

		public static void main(String[] args) 
		{
			Scanner sc=new Scanner(System.in);
			int a[]=new int[5];
			int temp=0;
			int x=0;
					
			int val[]=new int[5];
			
			for(int i=0;i<5;i++)
			{
				a[i]=sc.nextInt();
			}
			System.out.println("Duplicate number=");
			for(int j=0;j<5;j++)
			{
				for(int k=j+1;k<5;k++)
				{
					if(a[j]==a[k])
					{
						temp++;
						val[x]=a[k];
					//a[k]
						
						System.out.println();

					}
				}
				x++;

			}
			System.out.println("**********************");
			for(int m=0;m<=x;m++)
			{
		
			System.out.println("Dp val "+val[m]);
			}
			
				

	}

}
