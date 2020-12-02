package menu.model.vo;

import java.util.ArrayList;

public class MenuPageData {
	private ArrayList<Menu> listMenu;
	private String pageNavi;

	public MenuPageData() {
		// TODO Auto-generated constructor stub
	}

	public MenuPageData(ArrayList<Menu> listMenu, String pageNavi) {
		super();
		this.listMenu = listMenu;
		this.pageNavi = pageNavi;
	}

	public ArrayList<Menu> getListMenu() {
		return listMenu;
	}

	public void setListMenu(ArrayList<Menu> listMenu) {
		this.listMenu = listMenu;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
}
