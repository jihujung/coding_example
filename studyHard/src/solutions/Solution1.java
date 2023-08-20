package solutions;

import java.util.Scanner;

//문자열 붙여서 출력하기
public class Solution1 {

	 public static void main(String[] args) {

	        Scanner sc = new Scanner(System.in);

	        String a = sc.next();

	        String b = sc.next();

	       

	        String[] words = a.split("\\s");

	        String[] words_2 = b.split("\\s");

	        String A = String.join("",a);

	        System.out.print(A);

	        String B = String.join("",b);

	        System.out.print(B);

	       

	        //a += b;

	        //System.out.print(a);

	        

	        //System.out.println((a+b).replace(" ", ""));

	        

	        //System.out.print(a.trim() + b.trim());

	        

	        //String answer = a+b

	        //answer = answer.replace(" ", "");

	        //System.out.println(answer);

	        

	        //System.out.println(String.join("", a, b));

	        //String result = a + b;



	        //System.out.println(result);

	        //System.out.print(a);

	        //System.out.print(b);

	        //String answer = a.concat(b);

	        //System.out.println(answer);

	        //System.out.print(a + b);

}

}