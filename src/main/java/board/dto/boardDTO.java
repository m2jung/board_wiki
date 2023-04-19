package board.dto;

import java.sql.Date;


public class boardDTO {
	
	private int seq;
	private String id;
	private String name;
	private String subject;
	private String title;
	private String content;
	private int hit;
	private String logdate;

	
	public boardDTO() {
		super();
	}
	
	public boardDTO(int seq, String id, String name, String subject, String title, String content, int hit, String logdate) {
		super();
		this.seq = seq;
		this.id = id;
		this.name = name;
		this.subject = subject;
		this.title = title;
		this.content = content;
		this.hit = hit;
		this.logdate = logdate;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getLogdate() {
		return logdate;
	}
	public void setLogdate(String logdate) {
		this.logdate = logdate;
	}

	
	
}
