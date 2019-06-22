package TestBeans;

public class TextRectangleBean {
	public static void main(String[] args) {
		RectangleBean rectangle = new RectangleBean();
		rectangle.setWidth(10);
		rectangle.setHeight(20);

		System.out.print(rectangle.getArea());
	}
}
