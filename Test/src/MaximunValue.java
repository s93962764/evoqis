
public class MaximunValue {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int j=1;
		int[] val={1,8,9,7,25,6};
		//int[] temp=(int[]) new int[val.length];
		
		for(int i=0;i<=val.length-1;i++)
		{
			
			if(val[i]>val[j])
			{
				val[j]=val[i];
			}
			
			
			/*for(int j=1;j<=val.length;j++)
			{
				if(val[i]<val[j])
				{
					
				}
			} */
		}
		
		System.out.println(val[j]);

	}

}
