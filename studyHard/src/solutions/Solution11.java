package solutions;

public class Solution11 {

	public static void main(String[] args) {
		//�⺻ ������ ���ι迭
//		for(int i=2; i<=9; i++) { //�ܼ�
//			System.out.printf("[%d��]\n", i);
//			for(int j=1; j<=9; j++) { //���ϱ�
//					System.out.println(i + " x " +  j + " = " +  ( i * j) + "\t");
//			}
//			System.out.println();
//		}
		
		
		//���ι迭
//		for(int i=2; i<=9; i++) { //�ܼ�
//			for(int j=1; j<=9; j++) { //���ϱ�
//				if(i %2 == 0 && j<=5) { //¦���϶�
//					System.out.println(i + " x " +  j + " = " +  ( i * j) + "\t");
//					}else if(i %2 == 1 && j>=6){
//						System.out.println(i + " x " +  j + " = " +  ( i * j) + "\t");
//					}
//			}
//			System.out.println();
//		}
		
		
		
		
		//���ι迭
		//ù��° �õ�
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

		//�ι�° �õ�
//		for(int j=1; j<=9; j++) { //���ϱ�
//			for(int i=2; i<=9; i++) { //�ܼ�
//				if(i%2 == 0 && j<=5) { //¦���� �� 1,2,3,4,5 ������
//					System.out.print(i + " x " +  j + " = " +  i * j + "\t");
//				}else if(i%2 == 1) { //Ȧ���� �� 6,7,8,9 ������
//					for(int a=3; a<=9; a+=2) { //���ϱ�
//						if(a>=5) {
//							System.out.print(i + " x " +  a + " = " +  i * a + "\t");
//						    break;
//						}else if(i==9) {
//							System.out.println(i + " x " +  a + " = " +  i * a + "\t");
//						}
//					}
//					
//					
//				}
//			
//				}
//			
//			
//			}
	
		//����° �õ�
//		for(int j=1; j<=9; j++) { //���ϱ�
//			for(int i=2; i<=9; i++) { //�ܼ�
//				switch(i) {
//				case 2: case 4: case 6: case 8:
//					if(j<=5) {
//						System.out.print(i + " x " +  j + " = " +  i * j + "\t");
//					}else if(j<=6) {
//						
//					}
//					break;
//				case 3: case 5: case 7:jj
//					if(j<=5) {
//						System.out.print(i + " x " +  (j+5) + " = " +  i * (j+5) + "\t");
//					}else if(j>=6) {
//						System.out.print(i + " x " +  j + " = " +  i * j + "\t");
//					}
//					break;	
//				
//				case 9:
//					if(j<=5) {
//						System.out.println(i + " x " +  (j+5) + " = " +  i * (j+5) + "\t");
//					}else if(j>=6) {
//						System.out.println(i + " x " +  j + " = " +  i * j + "\t");
//					}
//					break;	
//				}
//				
//				}
//			
//				}
		
		
		
	}

}



