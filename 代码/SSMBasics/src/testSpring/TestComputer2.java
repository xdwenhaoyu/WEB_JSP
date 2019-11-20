package testSpring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestComputer2 {

	public static void main(String[] args) {
		@SuppressWarnings("resource")
		ApplicationContext ctx = new ClassPathXmlApplicationContext("UDiskBeans.xml");
		IComputer computer = ctx.getBean("ComputerBean", IComputer.class);
		
		//IComputer computer = new Computer("MyComputer");
		//IUDisk uDisk = new UDisk("USBDisk");
		//computer.setUDisk(uDisk);
		
		System.out.println(computer);
	}
}
