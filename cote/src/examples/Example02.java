package examples;

public class Example02 {

	public static void main(String[] args) {
         int num = 12345, sum = 0;
       
       // 10���� ������ ������ �ϸ� ������ �ڸ��� ��´�. - �� �ڸ����� ���� ���� �� ���
//     System.out.println(12345%10);
       
       // num = 12345, 1234, 123, 12, 1 (�̷��� ��� 10���� ������ �������� �������ڸ��̰�, ���� ���� ���� ���� �ȴ�.)
        while(num!=0) {
         // num�� 10���� ���� �������� sum�� ����
         sum += num%10;
         System.out.println("sum="+sum + ",num%10="+num%10);
         num /= 10;   // num = num / 10 ; num�� 10���� ���� �� 
       }

        System.out.println("�� �ڸ����� ��:"+sum);
 
	}//end main()

}//end class
