package testSpring;

public class TestComputer1 {

	public static void main(String[] args) {
		IComputer computer = new Computer("MyComputer");
		IUDisk uDisk = new UDisk("USBDisk");
		
		uDisk.setSize(300);
		computer.setUDisk(uDisk);
		
		System.out.println(computer);
	}

}
