package testSpring;

public interface IComputer {
	public void setName(String name);

	public String getName();

	public void setUDisk(IUDisk uDisk);

	public IUDisk getUDisk();
}
