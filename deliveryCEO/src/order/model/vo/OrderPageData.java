package order.model.vo;

import java.util.ArrayList;

public class OrderPageData {
	private ArrayList<Order> listOrder;
	private String pageNavi;

	public OrderPageData() {
		// TODO Auto-generated constructor stub
	}

	public OrderPageData(ArrayList<Order> listOrder, String pageNavi) {
		super();
		this.listOrder = listOrder;
		this.pageNavi = pageNavi;
	}

	public ArrayList<Order> getListOrder() {
		return listOrder;
	}

	public void setListOrder(ArrayList<Order> listOrder) {
		this.listOrder = listOrder;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
}
