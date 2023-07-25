package solutions;

//문자열 겹쳐쓰기
class Solution3 {

  public String solution(String my_string, String overwrite_string, int s) {

      //String answer = "";

      StringBuffer stringBuffer = new StringBuffer(my_string);

      int endIdx = s + overwrite_string.length();

      stringBuffer.replace(s, endIdx, overwrite_string);

      

      return stringBuffer.toString();

      

      

  }

  public static void main(String[] args) {

      Solution3 solution3 = new Solution3();

  	  String result = solution3.solution("he11oWorld", "lloWorl", 2);

      System.out.println(result);

      String res = solution3.solution("Program29b8UYP", "merS123", 7);

      System.out.println(res);

  }

}