package store.model.vo;

import java.util.ArrayList;

public class StorePageData {
	private ArrayList<Store> listStore;
	private String pageNavi;

	public StorePageData() {
		// TODO Auto-generated constructor stub
	}

	public StorePageData(ArrayList<Store> listStore, String pageNavi) {
		super();
		this.listStore = listStore;
		this.pageNavi = pageNavi;
	}

	public ArrayList<Store> getListStore() {
		return listStore;
	}

	public void setListStore(ArrayList<Store> listStore) {
		this.listStore = listStore;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}

}
