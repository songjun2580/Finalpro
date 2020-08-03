package fp.bbs.model;

import java.sql.*;

public class TipBbsDTO {

	private int t_idx;
	private String t_subject;
	private String t_contents;
	private String t_img;
	private Date t_date;
	private int t_ref;
	private int t_type;
	
	public TipBbsDTO() {
		// TODO Auto-generated constructor stub
	}

	public TipBbsDTO(int t_idx, String t_subject, String t_contents, String t_img, Date t_date, int t_ref, int t_type) {
		super();
		this.t_idx = t_idx;
		this.t_subject = t_subject;
		this.t_contents = t_contents;
		this.t_img = t_img;
		this.t_date = t_date;
		this.t_ref = t_ref;
		this.t_type = t_type;
	}

	public int getT_idx() {
		return t_idx;
	}

	public void setT_idx(int t_idx) {
		this.t_idx = t_idx;
	}

	public String getT_subject() {
		return t_subject;
	}

	public void setT_subject(String t_subject) {
		this.t_subject = t_subject;
	}

	public String getT_contents() {
		return t_contents;
	}

	public void setT_contents(String t_contents) {
		this.t_contents = t_contents;
	}

	public String getT_img() {
		return t_img;
	}

	public void setT_img(String t_img) {
		this.t_img = t_img;
	}

	public Date getT_date() {
		return t_date;
	}

	public void setT_date(Date t_date) {
		this.t_date = t_date;
	}

	public int getT_ref() {
		return t_ref;
	}

	public void setT_ref(int t_ref) {
		this.t_ref = t_ref;
	}

	public int getT_type() {
		return t_type;
	}

	public void setT_type(int t_type) {
		this.t_type = t_type;
	}

	
	
	
	
}
