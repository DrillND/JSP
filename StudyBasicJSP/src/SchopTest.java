//public class Dog{}

class Dog {
	static String name;
	
	
	public String getName() {
		return name;
		
	}
	
	public void setName(String name) {
		//this.name = name;
		Dog.name = name;
	}
	
	public String sayYourname() {
		String name = "바둑이";
		return name;
	}
	
}

public class SchopTest {
	
	// Scope A
	static String name = "홍길동"; //멤버변수
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Scope B
		String name = "강감찬";
		
		System.out.println(name);
		
		Dog d = new Dog();
		d.setName("뽀삐");
		System.out.println(d.getName());
		System.out.println(d.sayYourname()+"2");
	}

}
