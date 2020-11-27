package review.model.vo;

public class Review {
	private int reviewNo;
	private int reviewOrderNo;
	private int reviewScore;
	private String reviewContent;
	private String reviewClientId;
	private int reviewStore;
	private String reviewEntrollDate;

	public Review() {
		// TODO Auto-generated constructor stub
	}

	public Review(int reviewNo, int reviewOrderNo, int reviewScore, String reviewContent, String reviewClientId,
			int reviewStore, String reviewEntrollDate) {
		super();
		this.reviewNo = reviewNo;
		this.reviewOrderNo = reviewOrderNo;
		this.reviewScore = reviewScore;
		this.reviewContent = reviewContent;
		this.reviewClientId = reviewClientId;
		this.reviewStore = reviewStore;
		this.reviewEntrollDate = reviewEntrollDate;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public int getReviewOrderNo() {
		return reviewOrderNo;
	}

	public void setReviewOrderNo(int reviewOrderNo) {
		this.reviewOrderNo = reviewOrderNo;
	}

	public int getReviewScore() {
		return reviewScore;
	}

	public void setReviewScore(int reviewScore) {
		this.reviewScore = reviewScore;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public String getReviewClientId() {
		return reviewClientId;
	}

	public void setReviewClientId(String reviewClientId) {
		this.reviewClientId = reviewClientId;
	}

	public int getReviewStore() {
		return reviewStore;
	}

	public void setReviewStore(int reviewStore) {
		this.reviewStore = reviewStore;
	}

	public String getReviewEntrollDate() {
		return reviewEntrollDate;
	}

	public void setReviewEntrollDate(String reviewEntrollDate) {
		this.reviewEntrollDate = reviewEntrollDate;
	}
}