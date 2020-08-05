	package fp.info.model;

import java.sql.Date;

public class ComInfoDTO {

	private int coIdx;
	private int coType;
	private String coName;
	private String coEmail;
	private String coPwd;
	private String coTel;
	private String coRep;
	private String coBsNum;
	private String coCorNum;
	private String coAddr;
	private int coCpl;
	private int coWrg;
	private String coAddrDetail1;
	private String coAddrDetail2;
	private int coVerify;
	private Date wrgTime; 
	private Date wrgEnd; 
	
	public ComInfoDTO() {
		// TODO Auto-generated constructor stub
	}

	public ComInfoDTO(int coIdx, int coType, String coName, String coEmail, String coPwd, String coTel, String coRep,
			String coBsNum, String coCorNum, String coAddr, int coCpl, int coWrg, String coAddrDetail1,
			String coAddrDetail2, int coVerify, Date wrgTime, Date wrgEnd) {
		super();
		this.coIdx = coIdx;
		this.coType = coType;
		this.coName = coName;
		this.coEmail = coEmail;
		this.coPwd = coPwd;
		this.coTel = coTel;
		this.coRep = coRep;
		this.coBsNum = coBsNum;
		this.coCorNum = coCorNum;
		this.coAddr = coAddr;
		this.coCpl = coCpl;
		this.coWrg = coWrg;
		this.coAddrDetail1 = coAddrDetail1;
		this.coAddrDetail2 = coAddrDetail2;
		this.coVerify = coVerify;
		this.wrgTime = wrgTime;
		this.wrgEnd = wrgEnd;
	}

	public int getCoIdx() {
		return coIdx;
	}

	public void setCoIdx(int coIdx) {
		this.coIdx = coIdx;
	}

	public int getCoType() {
		return coType;
	}

	public void setCoType(int coType) {
		this.coType = coType;
	}

	public String getCoName() {
		return coName;
	}

	public void setCoName(String coName) {
		this.coName = coName;
	}

	public String getCoEmail() {
		return coEmail;
	}

	public void setCoEmail(String coEmail) {
		this.coEmail = coEmail;
	}

	public String getCoPwd() {
		return coPwd;
	}

	public void setCoPwd(String coPwd) {
		this.coPwd = coPwd;
	}

	public String getCoTel() {
		return coTel;
	}

	public void setCoTel(String coTel) {
		this.coTel = coTel;
	}

	public String getCoRep() {
		return coRep;
	}

	public void setCoRep(String coRep) {
		this.coRep = coRep;
	}

	public String getCoBsNum() {
		return coBsNum;
	}

	public void setCoBsNum(String coBsNum) {
		this.coBsNum = coBsNum;
	}

	public String getCoCorNum() {
		return coCorNum;
	}

	public void setCoCorNum(String coCorNum) {
		this.coCorNum = coCorNum;
	}

	public String getCoAddr() {
		return coAddr;
	}

	public void setCoAddr(String coAddr) {
		this.coAddr = coAddr;
	}

	public int getCoCpl() {
		return coCpl;
	}

	public void setCoCpl(int coCpl) {
		this.coCpl = coCpl;
	}

	public int getCoWrg() {
		return coWrg;
	}

	public void setCoWrg(int coWrg) {
		this.coWrg = coWrg;
	}

	public String getCoAddrDetail1() {
		return coAddrDetail1;
	}

	public void setCoAddrDetail1(String coAddrDetail1) {
		this.coAddrDetail1 = coAddrDetail1;
	}

	public String getCoAddrDetail2() {
		return coAddrDetail2;
	}

	public void setCoAddrDetail2(String coAddrDetail2) {
		this.coAddrDetail2 = coAddrDetail2;
	}

	public int getCoVerify() {
		return coVerify;
	}

	public void setCoVerify(int coVerify) {
		this.coVerify = coVerify;
	}

	public Date getWrgTime() {
		return wrgTime;
	}

	public void setWrgTime(Date wrgTime) {
		this.wrgTime = wrgTime;
	}

	public Date getWrgEnd() {
		return wrgEnd;
	}

	public void setWrgEng(Date wrgEnd) {
		this.wrgEnd = wrgEnd;
	}

	
	

	
	
}