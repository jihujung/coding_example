package examples;

import java.util.Scanner;

public class Example01 {

	public static void main(String[] args) {
        int num = 0, sum = 0;
        System.out.print("���ڸ� �Է��ϼ���.(��:12345)>");
        
        Scanner scanner = new Scanner(System.in);
        String tmp = scanner.nextLine();   // ȭ���� ���� �Է¹��� ���ڿ�
        num = Integer.parseInt(tmp);       // �Է¹��� ���ڿ�(tmp)�� ���ڷ� ��ȯ
        // Integer.parseInt�� ���ڿ�("")�� int�� �ٲ���(��: "12345" -> 12345)
        
        while(num!=0) {
         // num�� 10���� ���� �������� sum�� ����
         sum += num%10;
         System.out.printf("sum=%3d num=%d%n", sum, num);
         
         num /= 10;   // num = num / 10 ; num�� 10���� ���� �� 
     }

        System.out.println("�� �ڸ����� ��:"+sum);

 
	}//end main()

}//end class
