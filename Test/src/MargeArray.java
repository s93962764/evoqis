
public class MargeArray {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] val1={1,2,3,4,5,6};
		int[] val2={7,8,9};
		
		int[] marge=new int[val1.length+val2.length];
		
		for(int i=0;i<=val1.length-1;i++)
		{
			marge[i]=val1[i];
		}
		
		for(int i=0;i<=val2.length-1;i++)
		{
			for(int j=0;j<=marge.length-1;j++)
			{
				if(marge[j]==0)
				{
					marge[j]=val2[i];
					break;
				}
			}
		}
		for(int j=0;j<=marge.length-1;j++)
		{
		System.out.print(marge[j]);
		}

	}

}
