package store.model.vo;

public class Store {
	private int storeNo;
	private String storeCEO;
	private String storeAddr;
	private String storeTel;
	private String storeDet;
	private String storeName;
	private int storeCateId;
	private String storeStartTime;
	private String storeEndTime;
	private String storeRest;
	private String storeFileName;
	private String storeFilePath;

	public Store() {
		// TODO Auto-generated constructor stub
	}

	public Store(int storeNo, String storeCEO, String storeAddr, String storeTel, String storeDet, String storeName,
			int storeCateId, String storeStartTime, String storeEndTime, String storeRest, String storeFileName,
			String storeFilePath) {
		super();
		this.storeNo = storeNo;
		this.storeCEO = storeCEO;
		this.storeAddr = storeAddr;
		this.storeTel = storeTel;
		this.storeDet = storeDet;
		this.storeName = storeName;
		this.storeCateId = storeCateId;
		this.storeStartTime = storeStartTime;
		this.storeEndTime = storeEndTime;
		this.storeRest = storeRest;
		this.storeFileName = storeFileName;
		this.storeFilePath = storeFilePath;
	}

	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public String getStoreCEO() {
		return storeCEO;
	}

	public void setStoreCEO(String storeCEO) {
		this.storeCEO = storeCEO;
	}

	public String getStoreAddr() {
		return storeAddr;
	}

	public void setStoreAddr(String storeAddr) {
		this.storeAddr = storeAddr;
	}

	public String getStoreTel() {
		return storeTel;
	}

	public void setStoreTel(String storeTel) {
		this.storeTel = storeTel;
	}

	public String getStoreDet() {
		return storeDet;
	}

	public void setStoreDet(String storeDet) {
		this.storeDet = storeDet;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public int getStoreCateId() {
		return storeCateId;
	}

	public void setStoreCateId(int storeCateId) {
		this.storeCateId = storeCateId;
	}

	public String getStoreStartTime() {
		return storeStartTime;
	}

	public void setStoreStartTime(String storeStartTime) {
		this.storeStartTime = storeStartTime;
	}

	public String getStoreEndTime() {
		return storeEndTime;
	}

	public void setStoreEndTime(String storeEndTime) {
		this.storeEndTime = storeEndTime;
	}

	public String getStoreRest() {
		return storeRest;
	}

	public void setStoreRest(String storeRest) {
		this.storeRest = storeRest;
	}

	public String getStoreFileName() {
		return storeFileName;
	}

	public void setStoreFileName(String storeFileName) {
		this.storeFileName = storeFileName;
	}

	public String getStoreFilePath() {
		return storeFilePath;
	}

	public void setStoreFilePath(String storeFilePath) {
		this.storeFilePath = storeFilePath;
	}
}
