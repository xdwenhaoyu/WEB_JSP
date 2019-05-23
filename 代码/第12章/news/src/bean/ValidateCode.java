package bean;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServlet;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ValidateCode extends HttpServlet {

	private int x = 0;
	// 设置验证码图片中显示的字体高度
	private int fontHeight;
	private int codeY;

	// 在这里定义了验证码图片的宽度
	private int width = 60;
	// 定义验证码图片的高度。
	private int height = 20;
	// 定义验证码字符个数，此处设置为5位
	private int codeNum = 5;

	char[] codes = { '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C',
			'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'M', 'N', 'Q', 'R', 'S',
			'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
			'g', 'h', 'i', 'j', 'k', 'm', 'n', 'q', 'r', 's', 't', 'u', 'v',
			'w', 'x', 'y', 'z' };

	/**
	 * 对验证图片属性进行初始化
	 */
	public void init() throws ServletException {
		// 从部署文件web.xml中获取程序初始化信息，图片宽度跟高度，字符个数信息
		// 获取初始化字符个数
		String strCodeNums = this.getInitParameter("codeNum");
		// 获取验证码图片宽度参数
		String strW = this.getInitParameter("width");
		// 获取验证码图片高度参数
		String strH = this.getInitParameter("height");

		// 将配置的字符串信息转换成数值类型数字
		try {
			if (strH != null && strH.length() != 0) {
				height = Integer.parseInt(strH);
			}
			if (strW != null && strW.length() != 0) {
				width = Integer.parseInt(strW);
			}
			if (strCodeNums != null && strCodeNums.length() != 0) {
				codeNum = Integer.parseInt(strCodeNums);
			}
		} catch (NumberFormatException e) {
		}

		x = width / (codeNum + 1);
		fontHeight = height - 2;
		codeY = height - 4;

	}

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, java.io.IOException {
		// 定义验证码图像的缓冲流
		BufferedImage buffImg = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		// 产生图形上下文
		Graphics2D g = buffImg.createGraphics();

		// 创建随机数产生函数
		Random random = new Random();

		// 将验证码图像背景填充为白色
		g.setColor(Color.WHITE);
		g.fillRect(0, 0, width, height);

		// 创建字体格式，字体的大小则根据验证码图片的高度来设定。
		Font font = new Font("Fixedsys", Font.PLAIN, fontHeight);
		// 设置字体。
		g.setFont(font);

		// 为验证码图片画边框，为一个像素。
		g.setColor(Color.BLACK);
		g.drawRect(0, 0, width - 1, height - 1);

		// 随机生产12条图片干扰线条，使验证码图片中的字符不被轻易识别
		g.setColor(Color.BLACK);
		for (int i = 0; i < 12; i++) {
			int x = random.nextInt(width);
			int y = random.nextInt(height);
			int xl = random.nextInt(12);
			int yl = random.nextInt(12);
			g.drawLine(x, y, x + xl, y + yl);
		}

		// randomCode保存随机产生的验证码
		StringBuffer randomCode = new StringBuffer();

		// 定义颜色三素
		int red = 0, green = 0, blue = 0;

		// 随机生产codeNum个数字验证码
		for (int i = 0; i < codeNum; i++) {
			// 得到随机产生的验证码
			String strRand = String.valueOf(codes[random.nextInt(54)]);
			// 使用随机函数产生随机的颜色分量来构造颜色值，这样输出的每位数字的颜色值都将不同。
			red = random.nextInt(255);
			green = random.nextInt(255);
			blue = random.nextInt(255);

			// 用随机产生的颜色将验证码绘制到图像中。
			g.setColor(new Color(red, green, blue));
			g.drawString(strRand, (i + 1) * x, codeY);

			// 将产生的四个随机数组合在一起。
			randomCode.append(strRand);
		}
		// 将生产的验证码保存到Session中
		HttpSession session = req.getSession();
		session.setAttribute("validate", randomCode.toString().toLowerCase());

		System.out.println(randomCode.toString());

		// 设置图像缓存为no-cache。
		resp.setHeader("Pragma", "no-cache");
		resp.setHeader("Cache-Control", "no-cache");
		resp.setDateHeader("Expires", 0);

		resp.setContentType("image/jpeg");

		// 将最终生产的验证码图片输出到Servlet的输出流中
		ServletOutputStream sos = resp.getOutputStream();
		ImageIO.write(buffImg, "jpeg", sos);
		sos.close();
	}

}