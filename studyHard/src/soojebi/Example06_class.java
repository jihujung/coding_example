package soojebi;

public class Example06_class {
	   public static int getValue(int[] n) {
		   int sum=0;
		   for(int i : n) {
			   sum += i;
		   }
		   return sum/n.length;
	   }
	   public static void main(String[] args) {
		int[] num = {90, 80, 90};
		System.out.print(getValue(num));
	}
	}
