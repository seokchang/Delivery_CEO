package menu.model.vo;

public class Menu {
	private int rowNum;
	private int menuNo;
	private int menuPrice;
	private int menuStoreNo;
	private String menuDetail;
	private String menuName;
	private String menuFileName;
	private String menuFilePath;

	public Menu() {
		// TODO Auto-generated constructor stub
	}

	public Menu(int menuNo, int menuPrice, int menuStoreNo, String menuDetail, String menuName, String menuFileName,
			String menuFilePath) {
		super();
		this.menuNo = menuNo;
		this.menuPrice = menuPrice;
		this.menuStoreNo = menuStoreNo;
		this.menuDetail = menuDetail;
		this.menuName = menuName;
		this.menuFileName = menuFileName;
		this.menuFilePath = menuFilePath;
	}

	public int getRowNum() {
		return rowNum;
	}

	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}

	public int getMenuNo() {
		return menuNo;
	}

	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}

	public int getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}

	public int getMenuStoreNo() {
		return menuStoreNo;
	}

	public void setMenuStoreNo(int menuStoreNo) {
		this.menuStoreNo = menuStoreNo;
	}

	public String getMenuDetail() {
		return menuDetail;
	}

	public void setMenuDetail(String menuDetail) {
		this.menuDetail = menuDetail;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getMenuFileName() {
		return menuFileName;
	}

	public void setMenuFileName(String menuFileName) {
		this.menuFileName = menuFileName;
	}

	public String getMenuFilePath() {
		return menuFilePath;
	}

	public void setMenuFilePath(String menuFilePath) {
		this.menuFilePath = menuFilePath;
	}
}
