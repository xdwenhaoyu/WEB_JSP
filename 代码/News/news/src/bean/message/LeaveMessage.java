package bean.message;
import java.util.Date;

public class LeaveMessage {
	private int id;
	private String nickname;
	private String content;
	private Date adddate;
	private String ip;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}	
	public void setAdddate(Date date) {
		this.adddate = date;
	}
	public Date getAdddate() {
		return adddate;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}

}
