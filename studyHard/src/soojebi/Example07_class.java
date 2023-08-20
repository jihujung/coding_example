package soojebi;

class Parent2{
	int year = 2020;
	String name = "Parent";
	
	public Parent2(int year, String name) {
		this.year = year;
		this.name = name;
	}
	
	public void show() {
		System.out.println(name+ " " + year);
	}
}

class Child2 extends Parent2{
	
	public Child2(int year, String name) {
		super(year, name);
	} 
	
	public void show() {
		super.show();
	}
}

public class Example07_class {
	public static void main(String[] args) {
		Child2 a = new Child2(2021, "Soojebi");
	    a.show();
	}
}
