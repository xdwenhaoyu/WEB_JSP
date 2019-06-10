package bean.article;

import java.util.Date;

public class Article {
	private int articleid;
	private String artitle;
	private int columnid;
	private String artauthor;
	private String content;
	private Date artupdateTime;
	private Date artaddTime;
	private int viewnum;
	private String arthtmlurl;
	private String artkeywords;
	private int artstatus;
	private String artistop;
	private String artiscomment;

	public int getArticleid() {
		return articleid;
	}
	
	public void setArticleid(int articleid) {
		this.articleid = articleid;
	}

	public String getArtitle() {
		return artitle;
	}

	public void setArtitle(String arttitle) {
		this.artitle = arttitle;
	}

	public int getColumnid() {
		return columnid;
	}

	public void setColumnid(int columnid) {
		this.columnid = columnid;
	}

	public String getArtauthor() {
		return artauthor;
	}

	public void setArtauthor(String artauthor) {
		this.artauthor = artauthor;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getArtupdateTime() {
		return artupdateTime;
	}

	public void setArtupdateTime(Date artupdateTime) {
		this.artupdateTime = artupdateTime;
	}

	public Date getArtaddTime() {
		return artaddTime;
	}

	public void setArtaddTime(Date artaddTime) {
		this.artaddTime = artaddTime;
	}

	public int getViewnum() {
		return viewnum;
	}

	public void setViewnum(int viewnum) {
		this.viewnum = viewnum;
	}

	public String getArthtmlurl() {
		return arthtmlurl;
	}

	public void setArthtmlurl(String arthtmlurl) {
		this.arthtmlurl = arthtmlurl;
	}

	public String getArtkeywords() {
		return artkeywords;
	}

	public void setArtkeywords(String artkeywords) {
		this.artkeywords = artkeywords;
	}

	public int getArtstatus() {
		return artstatus;
	}

	public void setArtstatus(int artstatus) {
		this.artstatus = artstatus;
	}

	public String getArtistop() {
		return artistop;
	}

	public void setArtistop(String artistop) {
		this.artistop = artistop;
	}

	public String getArtiscomment() {
		return artiscomment;
	}

	public void setArtiscomment(String artiscomment) {
		this.artiscomment = artiscomment;
	}

}
