package examples;

//0���� 10���� ������ Ȧ���� �� ���ϱ� 
public class Example07 {

	public static void main(String[] args) {
		int answer = 0;
		
		for(int i=0; i<=10; i++) {
			if(i%2 != 0) {
				answer += i;
			}
		}
	
		System.out.println(answer);

	}

}
