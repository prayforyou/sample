package com.coderby.myapp.hr.model;


public class ProVO {

	private String pd_no;
	private String sale_no;
	private String pd_nm;
	private String startdate;
	private String enddate;
	private String dff;
	private String dfff;
	private String sdsd;
	private int pd_price;
	private int pd_check;


	public String getSdsd() {
		return sdsd;
	}
	public void setSdsd(String sdsd) {
		this.sdsd = sdsd;
	}
	public String getDff() {
		return dff;
	}
	public void setDff(String dff) {
		this.dff = dff;
	}
	public String getDfff() {
		return dfff;
	}
	public void setDfff(String dfff) {
		this.dfff = dfff;
	}
	public String getSale_no() {
		return sale_no;
	}
	public void setSale_no(String sale_no) {
		this.sale_no = sale_no;
	}
	public String getPd_no() {
		return pd_no;
	}
	public void setPd_no(String pd_no) {
		this.pd_no = pd_no;
	}
	public String getPd_nm() {
		return pd_nm;
	}
	public void setPd_nm(String pd_nm) {
		this.pd_nm = pd_nm;
	}
	public int getPd_price() {
		return pd_price;
	}
	public void setPd_price(int pd_price) {
		this.pd_price = pd_price;
	}
	public int getPd_check() {
		return pd_check;
	}
	public void setPd_check(int pd_check) {
		this.pd_check = pd_check;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	@Override
	public String toString() {
		return "1위 => 제품 명 : " + pd_nm + ", 판매량 : " + sdsd + "개 , 판매 금액 :" + dfff + "원 입니다.";
	}

	
}