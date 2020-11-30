package notice.model.vo;

import java.util.ArrayList;

public class NoticePageData {
	private ArrayList<Notice> list;
	private String PageNavi;
	public ArrayList<Notice> getList() {
		return list;
	}
	public void setList(ArrayList<Notice> list) {
		this.list = list;
	}
	public String getPageNavi() {
		return PageNavi;
	}
	public void setPageNavi(String pageNavi) {
		PageNavi = pageNavi;
	}
	public NoticePageData(ArrayList<Notice> list, String pageNavi) {
		super();
		this.list = list;
		PageNavi = pageNavi;
	}
	public NoticePageData() {
		super();
		// TODO Auto-generated constructor stub
	}
}
