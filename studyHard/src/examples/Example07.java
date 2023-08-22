package examples;

//0부터 10까지 정수중 홀수의 합 구하기 
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
