package soojebi;

class Book{
	String name = "���輭";
    void getPrice(String name) {
    	System.out.print("name : " + name);
    }
}

class Price extends Book{
	String price = "10,000��";
	void getPrice(String name) {
		super.getPrice(name);
		System.out.print("price : " + price);
	}
}

public class Example05_class {
	public static void main(String[] args) {
	Book b = new Price();
	b.getPrice("����ó�����");

	}

}
