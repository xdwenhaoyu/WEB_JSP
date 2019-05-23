package bean.statics;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;

public class MakeHtml {
	private static long star = 0;
	private static long end = 0;
	private static long ttime = 0;

	// 返回html代码
	public static String getHtmlCode(String httpUrl) {
		Date before = new Date();
		star = before.getTime();
		String htmlCode = "";
		try {
			InputStream in = null;
			URL url = new java.net.URL(httpUrl);
			HttpURLConnection connection = null;
			connection = (HttpURLConnection) url.openConnection();
			connection.setRequestProperty("User-Agent", "Mozilla/4.0");
			connection.connect();
			in = connection.getInputStream();
			BufferedReader breader = new BufferedReader(new InputStreamReader(
					in, "gb2312"));
			String currentLine;
			while ((currentLine = breader.readLine()) != null) {
				htmlCode += currentLine;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Date after = new Date();
			end = after.getTime();
			ttime = end - star;
			System.out.println("执行时间:" + ttime + "秒");
		}
		return htmlCode;
	}

	// 存储文件
	public static void writeHtml(String filePath, String info) {

		PrintWriter pw = null;
		String fileDirectory=filePath.substring(0, filePath.lastIndexOf('/'));
		try {
			File createFileFolder = new File(fileDirectory);
			boolean isExit = createFileFolder.exists();
			if (isExit != true) {
				createFileFolder.mkdirs();
			} 
//			else {
//				writeFile.delete();
//				writeFile.createNewFile();
//			}
			File file=new File(filePath);
			boolean fileExist=file.exists();
			if(fileExist!=true)
			{
				file.createNewFile();
			}
			else {
				file.delete();
				file.createNewFile();
			}
			
			pw = new PrintWriter(new FileOutputStream(filePath, true));
			pw.println(info);
			pw.close();
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			pw.close();
		}

	}

//	public static void main(String[] args) {
//		String url = "http://127.0.0.1:8090/news/article/leavemessage.jsp";
//		// String url = "http://www.baidu.com";
//		// String url="http://127.0.0.1:8090/news/article/newsdetail.jsp?id=1";
//		writeHtml("D:/Tomcat 5.5/webapps/news/html/1112/static_1.html", getHtmlCode(url));
//	}

}

