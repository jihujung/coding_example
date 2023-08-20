package soojebi;

class SuperObj {
	public void show() { 
		print();  //SuperObj�� print �޼ҵ� ȣ��
	}
	public void print() { //4
		print(); //5 SubObj�� print �޼ҵ� ȣ��
		System.out.print("Super");  //8
	}
}

class SubObj extends SuperObj {
	public void show() {  //2
		super.print();  //3  SuperObj�� print �޼ҵ� ȣ��
	}
	public void print() {  //6
		System.out.print("Sub"); //7
	} 
}

public class Example01_class {
	public static void main(String[] args) {
		SuperObj s = new SubObj();  // SubObj Ŭ������ �����ڸ� ȣ���ϰ�, ��ü s�� �����Ѵ�.
		s.show();  //1
	}

}
