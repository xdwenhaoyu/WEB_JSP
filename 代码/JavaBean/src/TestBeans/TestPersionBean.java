package TestBeans;

public class TestPersionBean {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PersonBean person = new PersonBean();
		person.setName("Bob");
		person.setMarried(false);

		System.out.print(person.getName());
		System.out.println(person.isMarried() ? "[Married]" : "[Single]");
	}

}
