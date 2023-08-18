package solutions;

import java.util.Arrays;

//자연수 뒤집어 배열로 만들기
public class Solution10 {
	public int[] solution(long n) {
		String s = String.valueOf(n); //숫자를 문자열로 저장

		int[] answer = new int[s.length()];

		for(int i = 0; i <answer.length; i++){
			            //문자열을 정수로 변환
			answer[i] = Integer.parseInt(s.substring(answer.length-1-i, answer.length-i));
		}
		return answer;
	}
	public static void main(String[] args) {

		Solution10 solution10 = new Solution10();

		int[] result = solution10.solution(12345);
		
		System.out.println(Arrays.toString(result));
		
	}
}