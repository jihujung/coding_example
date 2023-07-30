package solutions;

import java.util.*;
//자릿수 더하기
public class Solution7 {
    public int solution(int n) {
        int answer = 0;
//        String na = Integer.toString(n);
//        
//       for(int i=0; i<na.length(); i++) {
//    	   answer += Integer.parseInt(na.substring(i, i+1));
//       }
        
      //로그 값을 구하는 함수로 정수로 바꾼후 +1을 해주면 자릿수의 값을 구할 수 있음
        int len = (int)Math.log10(n)+1; 
        for(int i = 0; i < len; i++) {
            answer += n%10;
            n = n/10;   
        }
        return answer;
    }
    
    public static void main(String[] args) {

	      Solution7 solution7 = new Solution7();
	      
	      int result = solution7.solution(234);
	      
	      System.out.println(result);
    

    }
    }