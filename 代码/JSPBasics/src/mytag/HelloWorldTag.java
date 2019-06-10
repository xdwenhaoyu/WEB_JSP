package mytag;

import java.io.IOException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.*;

public class HelloWorldTag extends TagSupport {
	public int doStartTag() throws JspTagException {
		return EVAL_BODY_INCLUDE;
	}

	public int doEndTag() throws JspTagException {
		try {
			pageContext.getOut().write("Hello World");
		} catch (IOException ex) {
			throw new JspTagException("Error!");
		}
		return EVAL_PAGE;
	}

}
