package testSpring;

public class UDisk implements IUDisk {
	private int size;
	private String name;
			
	public UDisk() {
		this("UD1");
	}

	public UDisk(String name) {
		this.name = name;
		this.size = 100;
	}

	@Override
	public boolean formatDisk() {
		System.out.println("UDisk Formatted!");
		return true;
	}
	
	@Override
	public void setSize(int size) {
		this.size = size;
	}
	
	@Override
	public int getSize() {
		return size;
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
    public String toString() {
        return "UDisk{" + "size=" + size+",name="+name +'}';
    }

}
