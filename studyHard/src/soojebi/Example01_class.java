package soojebi;

class SuperObj {
	public void show() { 
		print();  //SuperObj의 print 메소드 호출
	}
	public void print() { //4
		print(); //5 SubObj의 print 메소드 호출
		System.out.print("Super");  //8
	}
}

class SubObj extends SuperObj {
	public void show() {  //2
		super.print();  //3  SuperObj의 print 메소드 호출
	}
	public void print() {  //6
		System.out.print("Sub"); //7
	} 
}

public class Example01_class {
	public static void main(String[] args) {
		SuperObj s = new SubObj();  // SubObj 클래스의 생성자를 호출하고, 객체 s를 생성한다.
		s.show();  //1
	}

}
