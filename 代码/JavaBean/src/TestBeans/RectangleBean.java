package TestBeans;

import java.io.Serializable;

public class RectangleBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private int width = 0;
	private int height = 0;

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getArea() {
		return width * height;
	}
}
