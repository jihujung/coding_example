package solutions;

import java.util.Arrays;
import java.util.stream.IntStream;

//없는 숫자 더하기
public class Solution4 {
	public int solution(int[] numbers) {
        int answer = 0;
        for(int i=0; i<=9; i++) {
            if(!contains(numbers,i)){
            	answer += i;
            }
        }
        return answer;
    }

	 // 배열에 특정 숫자가 포함되어 있는지 확인하는 메소드
    private boolean contains(int[] arr, int target) {
        for (int num : arr) {
            if (num == target) {
                return true;
            }
        }
        return false;
    }


//	 public int solution(int[] numbers) {
//	        int answer = 45;
//	        for (int n : numbers) {
//	            answer -= n;
//	        }
//
//	        return answer;
	        
		 //return 45-Arrays.stream(numbers).sum();
		 
		 //return IntStream.range(0, 10).filter(i -> Arrays.stream(numbers).noneMatch(num -> i == num)).sum();
		 
//	    }
	 
	 public static void main(String[] args) {

	      Solution4 solution4 = new Solution4();

	      int[] numbers = { 1, 2, 3, 4, 6, 7, 8, 0 };
	      
	      //int[] numbers = {5,8,4,0,6,7,9};
		     
	  	  int result = solution4.solution(numbers);

	      System.out.println(result);
	  }
}