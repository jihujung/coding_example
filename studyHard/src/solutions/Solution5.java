package solutions;

import java.util.Arrays;

//Æò±Õ ±¸ÇÏ±â
class Solution5 {
    public double solution(int[] arr) {
        double answer = 0;
//        for(int i=0; i<arr.length; i++)
//            answer += arr[i];
        
        for(int i : arr) {
        	answer += i;
        }
        return answer/arr.length;  //2.5
    	
    	 //return (int) Arrays.stream(arr).average().orElse(0); //2.0
        //return (int) Arrays.stream(arr).average().getAsDouble(); //2.0
        //return java.util.stream.IntStream.of(arr).sum() / arr.length; //2.0
        
    }
    
    public static void main(String[] args) {

	      Solution5 solution5 = new Solution5();

	      int[] numbers = {1,2,3,4};
	      
	      
	  	  double result = solution5.solution(numbers);

	      System.out.println(result);
}
}