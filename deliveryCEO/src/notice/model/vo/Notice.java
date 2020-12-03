package notice.model.vo;

public class Notice {
	private int rNum;
	public int getrNum() {
		return rNum;
	}
	public void setrNum(int rNum) {
		this.rNum = rNum;
	}
	
	private int noticeNo;
	private String noticeTitle;
	private String noticeAdminId;
	private String noticeEnroll;
	private String noticeContent;
	private String filename;
	private String filepath;
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notice(int rNum, int noticeNo, String noticeTitle, String noticeAdminId, String noticeEnroll,
			String noticeContent, String filename, String filepath) {
		super();
		this.rNum = rNum;
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeAdminId = noticeAdminId;
		this.noticeEnroll = noticeEnroll;
		this.noticeContent = noticeContent;
		this.filename = filename;
		this.filepath = filepath;
	}
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeAdminId() {
		return noticeAdminId;
	}
	public void setNoticeAdminId(String noticeAdminId) {
		this.noticeAdminId = noticeAdminId;
	}
	public String getNoticeEnroll() {
		return noticeEnroll;
	}
	public void setNoticeEnroll(String noticeEnroll) {
		this.noticeEnroll = noticeEnroll;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	

}
