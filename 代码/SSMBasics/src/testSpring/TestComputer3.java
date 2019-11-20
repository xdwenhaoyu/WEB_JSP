package testSpring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestComputer3 {

	public static void main(String[] args) {
		@SuppressWarnings("resource")
		ApplicationContext ctx = new ClassPathXmlApplicationContext("UDiskBeans.xml");
		ComputerService computerService = ctx.getBean(ComputerService.class);

		computerService.print();
	}
}
