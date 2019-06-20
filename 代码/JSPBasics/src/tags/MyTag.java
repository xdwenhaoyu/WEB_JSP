package tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MyTag extends TagSupport {

	private static final long serialVersionUID = 1L;
	
	private String info = "";

	public MyTag() {
		// TODO Auto-generated constructor stub
	}
	
	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public int doStartTag() {
		return SKIP_BODY;
	}

	public int doEndTag() throws JspException {
		JspWriter writer = pageContext.getOut();
		try {
			for (int i=0;i<3;i++){
				writer.print(this.info + "<br/>");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}
}
