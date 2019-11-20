package testSpring;

public interface IUDisk {
	public boolean formatDisk();

	public void setSize(int size);

	public int getSize();

	public void setName(String name);

	public String getName();
}
