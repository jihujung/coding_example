package solutions;

public class Solution11 {

	public static void main(String[] args) {
		//기본 구구단 세로배열
//		for(int i=2; i<=9; i++) { //단수
//			System.out.printf("[%d단]\n", i);
//			for(int j=1; j<=9; j++) { //곱하기
//					System.out.println(i + " x " +  j + " = " +  ( i * j) + "\t");
//			}
//			System.out.println();
//		}
		
		
		//세로배열
//		for(int i=2; i<=9; i++) { //단수
//			for(int j=1; j<=9; j++) { //곱하기
//				if(i %2 == 0 && j<=5) { //짝수일때
//					System.out.println(i + " x " +  j + " = " +  ( i * j) + "\t");
//					}else if(i %2 == 1 && j>=6){
//						System.out.println(i + " x " +  j + " = " +  ( i * j) + "\t");
//					}
//			}
//			System.out.println();
//		}
		
		
		
		
		//가로배열
		//첫번째 시도
//		for(int i=2; i<=9; i++) {
//			if(i %2 == 0) {
//				for(int j=1; j<=5; j++) {
//					System.out.print(i + " x " +  j + " = " +  String.format("%2d", i * j) + "\t");
		                                                      //Integer Formatting
//				}
//				
//			}else {
//				for(int j=6; j<=9; j++) {
//					System.out.printf(i + " x " +  j + " = " +  String.format("%2d", i * j) + "\t");
//					
//				}
//				System.out.println();
//			}
//			
//		}

		//두번째 시도
//		for(int j=1; j<=9; j++) { //곱하기
//				for(int i=2; i<=9; i++) {
//					if(i%2 == 0 && j<=5) {
//						System.out.print(i + " x " +  j + " = " +  String.format("%2d", i * j) + "\t");
//					}else if(i%2 == 1 && j>=6) {
//						System.out.print(i + " x " +  j + " = " +  String.format("%2d", i * j) + "\t");
//					}
//				
//					}
//				System.out.println();
//				}
			
		
	
	
		//세번째 시도
		for(int j=1; j<=5; j++) { //곱하기
			for(int i=2; i<=9; i++) { //단수
				switch(i) {
				case 2: case 4: case 6: case 8:
					if(j<=5) {
						System.out.print(i + " x " +  j + " = " +  i * j + "\t");
					}else if(j>=6) {
						break;
					}
					break;
				case 3: case 5: case 7:
					if(j<=4) {
						System.out.print(i + " x " +  (j+5) + " = " +  i * (j+5) + "\t");
					}else if(j>6) {
						System.out.print(i + " x " +  j + " = " +  i * j + "\t");
					}else if(j==5) {
						System.out.print("                ");
					}
					break;	
				
				case 9:
					if(j<=4) {
						System.out.println(i + " x " +  (j+5) + " = " +  i * (j+5) + "\t");
					}else if(j>=6) {
						System.out.println(i + " x " +  j + " = " +  i * j + "\t");
					}
					break;	
				}
				
				}
			
				}
		
		
		
	}

}



