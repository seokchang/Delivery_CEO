package notice.model.vo;

public class NoticeComment {
	private int noticeCommentNo;
	private int noticeCommentLevel;
	private String noticeCommentWriter;
	private String noticeCommentContent;
	private int noticeRef;
	private int noticeCommentRef;
	private String noticeCommentDate;
	public NoticeComment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NoticeComment(int noticeCommentNo, int noticeCommentLevel, String noticeCommentWriter,
			String noticeCommentContent, int noticeRef, int noticeCommentRef, String noticeCommentDate) {
		super();
		this.noticeCommentNo = noticeCommentNo;
		this.noticeCommentLevel = noticeCommentLevel;
		this.noticeCommentWriter = noticeCommentWriter;
		this.noticeCommentContent = noticeCommentContent;
		this.noticeRef = noticeRef;
		this.noticeCommentRef = noticeCommentRef;
		this.noticeCommentDate = noticeCommentDate;
	}
	public int getNoticeCommentNo() {
		return noticeCommentNo;
	}
	public void setNoticeCommentNo(int noticeCommentNo) {
		this.noticeCommentNo = noticeCommentNo;
	}
	public int getNoticeCommentLevel() {
		return noticeCommentLevel;
	}
	public void setNoticeCommentLevel(int noticeCommentLevel) {
		this.noticeCommentLevel = noticeCommentLevel;
	}
	public String getNoticeCommentWriter() {
		return noticeCommentWriter;
	}
	public void setNoticeCommentWriter(String noticeCommentWriter) {
		this.noticeCommentWriter = noticeCommentWriter;
	}
	public String getNoticeCommentContentBr() {
		return noticeCommentContent.replaceAll("\r\n", "<br>");
	}
	public String getNoticeCommentContent() {
		return noticeCommentContent;
	}
	public void setNoticeCommentContent(String noticeCommentContent) {
		this.noticeCommentContent = noticeCommentContent;
	}
	public int getNoticeRef() {
		return noticeRef;
	}
	public void setNoticeRef(int noticeRef) {
		this.noticeRef = noticeRef;
	}
	public int getNoticeCommentRef() {
		return noticeCommentRef;
	}
	public void setNoticeCommentRef(int noticeCommentRef) {
		this.noticeCommentRef = noticeCommentRef;
	}
	public String getNoticeCommentDate() {
		return noticeCommentDate;
	}
	public void setNoticeCommentDate(String noticeCommentDate) {
		this.noticeCommentDate = noticeCommentDate;
	}
	

}
