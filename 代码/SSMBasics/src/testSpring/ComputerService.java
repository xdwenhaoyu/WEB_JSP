package testSpring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ComputerService {
	// ApplicationContext ctx = new ClassPathXmlApplicationContext("UDiskBeans.xml");
	// IComputer computer = ctx.getBean("ComputerBean", IComputer.class);
	
	@Autowired
	IComputer computer;
	
	public void print() {
		System.out.println(computer);
	}
	
	@Override
	public String toString() {
		return computer.toString();
	}
}
