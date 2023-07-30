package solutions;

//Â¦¼ö¿Í È¦¼ö
class Solution9 {
	public String solution(int num) {
//		String answer = "";
//		
//			if(num%2 == 0){
//				answer = "Even";
//			}else{
//				answer = "Odd";
//			}
//		
//		return answer;
		
		return (num % 2 == 0) ? "Even" : "Odd";
	}

	public static void main(String[] args) {

		Solution9 solution9 = new Solution9();

		String result = solution9.solution(7);

		System.out.println(result);
	}
}