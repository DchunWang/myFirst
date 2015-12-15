package abberation;

import java.util.*;

/**
 *This program demonstrates a <code>for</code> loop
 *@page 71
 *@author wangdch
 *@date 2015-12-15
 */

public class myabet
{
	public static void main(String [] args)
	{
		Scanner in = new Scanner(System.in);
		
		System.out.print("How many numbers do you need to draw ? ");
		int k = in.nextInt();
		
		System.out.print("What is the highest number you can draw ? ");
		int n = in.nextInt();
		
		//comput binomial coefficient n*(n-1)*(n-2)*...*(n-k+1)/(1*2*3*...*k)
		
		int lotterOdds = 1;
		for(int i = 1; i <= k; ++i)
		{
			lotterOdds = lotterOdds * (n - i + 1) / i;
			
		}
		System.out.println("Your odds are 1 in " + lotterOdds + ".Good luck !");
	}
}
