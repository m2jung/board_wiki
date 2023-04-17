package board.dto;

import java.sql.Date;

public class boardDTO {
	
	private int seq;
	private String id;
	private String subject;
	private String contents;
	private int hit;
	private Date date;
	private int subcatno;
	
	
	public boardDTO() {
		super();
	}
	
	public boardDTO(int seq, String id, String subject, String contents, int hit, Date date, int subcatno) {
		super();
		this.seq = seq;
		this.id = id;
		this.subject = subject;
		this.contents = contents;
		this.hit = hit;
		this.date = date;
		this.subcatno = subcatno;
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
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getSubcatno() {
		return subcatno;
	}
	public void setSubcatno(int subcatno) {
		this.subcatno = subcatno;
	}
	
	
	
}
