package ceo.model.vo;

public class Ceo {
	private String ceoId;
	private String ceoPw;
	private String ceoName;
	private String ceoTel;
	private String ceoAddr;
	public String getCeoId() {
		return ceoId;
	}
	public void setCeoId(String ceoId) {
		this.ceoId = ceoId;
	}
	public String getCeoPw() {
		return ceoPw;
	}
	public void setCeoPw(String ceoPw) {
		this.ceoPw = ceoPw;
	}
	public String getCeoName() {
		return ceoName;
	}
	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}
	public String getCeoTel() {
		return ceoTel;
	}
	public void setCeoTel(String ceoTel) {
		this.ceoTel = ceoTel;
	}
	public String getCeoAddr() {
		return ceoAddr;
	}
	public void setCeoAddr(String ceoAddr) {
		this.ceoAddr = ceoAddr;
	}
	public Ceo(String ceoId, String ceoPw, String ceoName, String ceoTel, String ceoAddr) {
		super();
		this.ceoId = ceoId;
		this.ceoPw = ceoPw;
		this.ceoName = ceoName;
		this.ceoTel = ceoTel;
		this.ceoAddr = ceoAddr;
	}
	public Ceo() {
		super();
		// TODO Auto-generated constructor stub
	}
}
