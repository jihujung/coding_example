package examples;

import java.util.Scanner;

public class Example05 {

	public static void main(String[] args) {
        int input = 0, answer = 0;
        
        answer = (int)(Math.random() * 10) + 1;   // 1~100 ������ ������ ���� ����
        System.out.println("answer="+answer);
        Scanner scanner = new Scanner(System.in);
        
        do {
          System.out.print("1�� 100 ������ ������ �Է��ϼ���.>");
          input = scanner.nextInt();
          
          if(input > answer) {
             System.out.println("�� ���� ���� �ٽ� �õ��غ�����.");
          }else if(input < answer) {
             System.out.println("�� ū ���� �ٽ� �õ��غ�����.");
          }
      } while(input!=answer);    

        System.out.println("�����Դϴ�.");     
 
	}//end main()

}//end class
