package testSpring;

public class Computer implements IComputer {

	private String name;
	private IUDisk uDisk;
	
	public Computer(String name) {
		this.name = name;
		this.uDisk = null;
	}

	@Override
	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String getName() {
		return name;
	}

	@Override
	public void setUDisk(IUDisk uDisk) {
		this.uDisk = uDisk;
	}

	@Override
	public IUDisk getUDisk() {
		return uDisk;
	}
	
    @Override
    public String toString() {
        return "Computer{" + "name="+name +'}'+uDisk;
    }
}
