package bean.commom;

public class HtmlUtil {
	public static String getStringtrim(String str, int strlen) {
		if (str != null && str.length() > strlen) {
			return str.substring(0, strlen) + "...";
		} else {
			return str;
		}
	}
}
