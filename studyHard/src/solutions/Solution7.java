package solutions;

import java.util.*;
//�ڸ��� ���ϱ�
public class Solution7 {
    public int solution(int n) {
        int answer = 0;
//        String na = Integer.toString(n);
//        
//       for(int i=0; i<na.length(); i++) {
//    	   answer += Integer.parseInt(na.substring(i, i+1));
//       }
        
      //�α� ���� ���ϴ� �Լ��� ������ �ٲ��� +1�� ���ָ� �ڸ����� ���� ���� �� ����
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