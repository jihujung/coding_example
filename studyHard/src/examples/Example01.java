package examples;

import java.util.Scanner;

public class Example01 {

	public static void main(String[] args) {
        int num = 0, sum = 0;
        System.out.print("숫자를 입력하세요.(예:12345)>");
        
        Scanner scanner = new Scanner(System.in);
        String tmp = scanner.nextLine();   // 화면을 통해 입력받은 문자열
        num = Integer.parseInt(tmp);       // 입력받은 문자열(tmp)을 숫자로 변환
        // Integer.parseInt가 문자열("")을 int로 바꿔줌(예: "12345" -> 12345)
        
        while(num!=0) {
         // num을 10으로 나눈 나머지를 sum에 더함
         sum += num%10;
         System.out.printf("sum=%3d num=%d%n", sum, num);
         
         num /= 10;   // num = num / 10 ; num을 10으로 나눈 값 
     }

        System.out.println("각 자리수의 합:"+sum);

 
	}//end main()

}//end class
