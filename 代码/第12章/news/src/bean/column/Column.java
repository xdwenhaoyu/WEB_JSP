package bean.column;

public class Column {
	private int columnid;
	private String columntitle;
	private String columndesc;

	public Column() {
	}

	public void setColumnid(int columnid) {
		this.columnid = columnid;
	}

	public int getColumnid() {
		return columnid;
	}

	public void setColumntitle(String columntitle) {
		this.columntitle = columntitle;
	}

	public String getColumntitle() {
		return columntitle;
	}

	public void setColumndesc(String columndesc) {
		this.columndesc = columndesc;
	}

	public String getColumndesc() {
		return columndesc;
	}

}
