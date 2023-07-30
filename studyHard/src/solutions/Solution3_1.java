package solutions;

//문자열 겹쳐쓰기_1
public class Solution3_1 {

	public String solution(String my_string, String overwrite_string, int s) {

//		String before = my_string.substring(0, s);

//        String after = my_string.substring(s + overwrite_string.length());

//        return before + overwrite_string + after;

        

        String answer = my_string.substring(0, s) + overwrite_string;



        if(my_string.length() > answer.length()) {

            answer += my_string.substring(answer.length());

        }

        return answer;

	}

	

	public static void main(String[] args) {

        Solution3_1 solution3 = new Solution3_1();

    	String result = solution3.solution("he11oWorld", "lloWorl", 2);

        System.out.println(result);

        String res = solution3.solution("Program29b8UYP", 	"merS123", 7);

        System.out.println(res);

    }

}