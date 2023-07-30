package solutions;

//약수의 합
public class Solution8 {
    public int solution(int n) {
        int answer = 0;
        for(int i=1; i<=n; i++){
            if(n%i == 0){
                answer += i;
            }
        }
        return answer;
        
        //return IntStream.range(1, n + 1).filter(i -> n % i == 0).sum();
    }
    
    public static void main(String[] args) {

	      Solution8 solution8 = new Solution8();
	      
	      int result = solution8.solution(12);
	      
	      System.out.println(result);
}
}