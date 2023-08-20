package soojebi;

public class Example04_class {
    static int func(int n) {
  	  return n*9;
    }
    
    static int func(int a, int b) {
  	  return a*b;
    }
    
    public static void main(String[] args) {
		//System.out.printf("%d", func(5) + func(2,3)); // 51(10진수)
		//System.out.printf("%o", func(5) + func(2,3)); // 63(8진수)
		System.out.printf("%x", func(5) + func(2,3)); // 33(16진수)
	}
}