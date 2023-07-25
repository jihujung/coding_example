package solutions;

import java.util.Scanner;

//a와 b 출력하기
public class Solution2 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int a = sc.nextInt();

		int b = sc.nextInt();



		//System.out.println("a = " + a);

		//System.out.println("b = " + b);



		//System.out.printf("a = %d%nb = %d",a,b);

		

		 if(a>=-100000 && a<=100000 && b>=-100000 && b<=100000) {

		            System.out.println("a = " + a);

		            System.out.println("b = " + b);

		        }

		

		//System.out.println("a = " + Integer.toString(a));

		//System.out.println("b = " + Integer.toString(b));





		//System.out.println(String.format("a = %d", a));

		//System.out.println(String.format("b = %d", b));



		//sc.close();

	}

}