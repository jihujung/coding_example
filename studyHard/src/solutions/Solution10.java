package solutions;

import java.util.Arrays;

//�ڿ��� ������ �迭�� �����
public class Solution10 {
	public int[] solution(long n) {
		String s = String.valueOf(n); //���ڸ� ���ڿ��� ����

		int[] answer = new int[s.length()];

		for(int i = 0; i <answer.length; i++){
			            //���ڿ��� ������ ��ȯ
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