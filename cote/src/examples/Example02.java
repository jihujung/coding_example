package examples;

public class Example02 {

	public static void main(String[] args) {
         int num = 12345, sum = 0;
       
       // 10으로 나머지 연산을 하면 마지막 자리를 얻는다. - 각 자리수의 합을 구할 때 사용
//     System.out.println(12345%10);
       
       // num = 12345, 1234, 123, 12, 1 (이렇게 계속 10으로 나누면 나머지는 마지막자리이고, 남는 몫은 다음 값이 된다.)
        while(num!=0) {
         // num을 10으로 나눈 나머지를 sum에 더함
         sum += num%10;
         System.out.println("sum="+sum + ",num%10="+num%10);
         num /= 10;   // num = num / 10 ; num을 10으로 나눈 값 
       }

        System.out.println("각 자리수의 합:"+sum);
 
	}//end main()

}//end class
