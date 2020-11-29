package review.model.vo;

import java.util.ArrayList;

public class ReviewPageData {
	private ArrayList<Review> listReview;
	private String pageNavi;

	public ReviewPageData() {
		// TODO Auto-generated constructor stub
	}

	public ReviewPageData(ArrayList<Review> listReview, String pageNavi) {
		super();
		this.listReview = listReview;
		this.pageNavi = pageNavi;
	}

	public ArrayList<Review> getListReview() {
		return listReview;
	}

	public void setListReview(ArrayList<Review> listReview) {
		this.listReview = listReview;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
}
