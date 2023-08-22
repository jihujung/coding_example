package examples;

//1층이 별 10개로 된 것 쌓아올리기
public class Example08 {

	public static void main(String[] args) {
		for(int i =1; i<=10; i++) {
			for(int j=0; j<i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}

	}

}
