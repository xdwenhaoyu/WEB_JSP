package testSpring;

public class TestUDisk1 {

	public static void main(String[] args) {
		IUDisk uDisk = new UDisk();
		
		System.out.println(uDisk);
		uDisk.setName("UD2");
		System.out.println(uDisk);
	}

}
