package beans;

import java.io.Serializable;

public class PersonBean implements Serializable {
	private String name;
	private boolean deceased;

	/** 没有参数的构造方法. */
	public PersonBean() {
	}

	/**
	 * 获取属性name的值，注意方法名为getName,属性名的首字母要大写.
	 */
	public String getName() {
		return this.name;
	}

	/**
	 * 设置属性name的值，注意方法名为setName，属性名的首字母要大写，必须由参变量
	 */
	public void setName(final String name) {
		this.name = name;
	}

	/**
	 * 获取属性 "deceased"的值 Different syntax for a boolean field (is vs. get)
	 */
	public boolean isDeceased() {
		return this.deceased;
	}

	/**
	 * 设置属性"deceased"的值
	 * @param deceased
	 */
	public void setDeceased(final boolean deceased) {
		this.deceased = deceased;
	}

}
