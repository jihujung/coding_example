package examples;

/*
i=14
sum=105
*/

public class Example03 {
	public static void main(String[] args) {
   int sum = 0;
   int i   = 0;
   
    while(true) { // ���ѹݺ��� for(;true;){}
   	if(sum > 100)
   		break;  // �ڽ��� ���� �ϳ��� �ݺ����� �����.
   	++i;
   	sum += i;
   }// end of while
    
   System.out.println("i=" + i);
   System.out.println("sum=" + sum);
	}//end main()

}//end class
