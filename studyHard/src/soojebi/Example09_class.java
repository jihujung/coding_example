package soojebi;

public class Example09_class {

	public static void main(String[] args) {
		int[] arr = {3,4,10,2,5};
		int temp;
		//3 = arr.length -1 -1
		for(int i=0; i<=3; i++) { 
			//4 = arr.length -1
			for(int j=i+1; j<=4; j++) {
				if(arr[i] < arr[j]) {
					temp = arr[i];
					arr[i] = arr[j];
					arr[j] = temp;
				}
			}
		}
		for(int i=0; i<5; i++) {
			System.out.print(arr[i] + " ");
		}

	}

}
