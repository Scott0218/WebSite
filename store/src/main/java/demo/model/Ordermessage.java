package demo.model;
// Generated 2018/2/24 �U�� 03:37:29 by Hibernate Tools 3.5.0.Final

import java.util.Date;

/**
 * Ordermessage generated by hbm2java
 */
public class Ordermessage implements java.io.Serializable {

	private Integer num;
	private String senderMail;
	private String acceptMail;
	private String title;
	private String content;
	private Date senderTime;

	public Ordermessage() {
	}

	public Ordermessage(String senderMail, String acceptMail, Date senderTime) {
		this.senderMail = senderMail;
		this.acceptMail = acceptMail;
		this.senderTime = senderTime;
	}

	public Ordermessage(String senderMail, String acceptMail, String title, String content, Date senderTime) {
		this.senderMail = senderMail;
		this.acceptMail = acceptMail;
		this.title = title;
		this.content = content;
		this.senderTime = senderTime;
	}

	public Integer getNum() {
		return this.num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getSenderMail() {
		return this.senderMail;
	}

	public void setSenderMail(String senderMail) {
		this.senderMail = senderMail;
	}

	public String getAcceptMail() {
		return this.acceptMail;
	}

	public void setAcceptMail(String acceptMail) {
		this.acceptMail = acceptMail;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getSenderTime() {
		return this.senderTime;
	}

	public void setSenderTime(Date senderTime) {
		this.senderTime = senderTime;
	}

}
