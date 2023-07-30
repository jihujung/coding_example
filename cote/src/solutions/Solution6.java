package solutions;

import java.util.Arrays;

//x만큼 간격이 있는 n개의 숫자
public class Solution6 {
	 public long[] solution(int x, int n) {
	long[] answer = new long[n];
    answer[0] = x;
    
    for(int i=1; i<n; i++) {
    	answer[i] = answer[i-1] + x;
    }
	
    return answer;
}
	 public static void main(String[] args) {

	      Solution6 solution6 = new Solution6();
	      
	      long[] result = solution6.solution(2, 6);
	      
	      System.out.println(Arrays.toString(result));
	 
}
}