package notice.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.jsp.tagext.PageData;

import common.JDBCTemplate;
import notice.model.dao.NoticeDao;
import notice.model.vo.Notice;
import notice.model.vo.NoticeComment;
import notice.model.vo.NoticePageData;
import notice.model.vo.NoticeViewData;

public class NoticeService {

	public NoticePageData selectList(int reqPage) {
		Connection conn = JDBCTemplate.getConnection();
		NoticeDao dao = new NoticeDao();
		int totalCount = dao.totalCount(conn); // 총 게시물 수를 구하는 DAO
		int numPerPage = 10; // 한 페이지당 게시물 수
		int totalPage = 0; // 전체 페이지 수
		if (totalCount % numPerPage == 0) { // 나머지가 0 이면
			totalPage = totalCount / numPerPage;
		} else { // 나머지가 0이 아닌경우
			totalPage = totalCount / numPerPage + 1;
		}

		System.out.println("totalCount :" + totalCount);
		// reqPage=1 -> start : 1, end : 10
		// reqPage=2 -> start : 11, end : 20
		// reqPage=3 -> start : 22, end : 30
		int start = (reqPage - 1) * numPerPage + 1; // 시작번호
		int end = reqPage * numPerPage; // 해당페이지 게시물의 끝번호
		System.out.println("시작번호 :"+start+"/끝번호 : " +end);
		ArrayList<Notice> list = dao.selectList(conn,start,end);
		//페이지 네비게이션 작성 시작
		int pageNaviSize = 5; //페이지 네비게이션 길이 지정
		String pageNavi = ""; //페이지 네비 태그 작성용
		//페이지네비게이션의 시작번호 구하기
		//reqPage : 1~5 - > 1, reqPage : 6 ~ 10 ->6, reqPage : 11~15 = 11
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		//이전 버튼 : 페이지 시작번호가 1이 아닌경우에만 이전버튼 생성 
		if(pageNo != 1) {
			pageNavi += "<a class='btn' href='/noticeList?reqPage="+(pageNo-1)+"'>이전</a>";
		}
		//페이지 네비 숫자
		//57ro -> totalPage = 6개페이지
		//reqPage = 1, pageNo => 1
		for(int i = 0;i<pageNaviSize;i++) {
			if(reqPage == pageNo) { // 페이지 네비가 현재 요청페이지인 경우(a태그가 필요없음)
				pageNavi += "<span class='selectPage'>"+pageNo+"</sapn>";
			}else {
				pageNavi += "<a class='btn' href='/noticeList?reqPage="+pageNo+"'>"+pageNo+"</a>";
			}
			pageNo++;
			if(pageNo > totalPage) {
				break;
			}
			
		}
		//다음버튼
		if(pageNo <= totalPage) {
			pageNavi += "<a class= 'btn' href='/noticeList?reqPage="+pageNo+"'>다음</a>";
		}
		NoticePageData npd = new NoticePageData(list, pageNavi);
		
		JDBCTemplate.close(conn);
		return npd;
	}
	public Notice selectOneNotice(int noticeNo) {
		Connection conn = JDBCTemplate.getConnection();
		Notice n = new NoticeDao().selectOneNotice(conn , noticeNo);
		JDBCTemplate.close(conn);
		return n;
	}
	public NoticeViewData selectNoticeView(int noticeNo) {
		Connection conn = JDBCTemplate.getConnection();
		Notice n = new NoticeDao().selectOneNotice(conn , noticeNo);
		ArrayList<NoticeComment> list = new NoticeDao().selectNoticeCommentList(conn,noticeNo);
		JDBCTemplate.commit(conn);
		NoticeViewData nvd = new NoticeViewData(n, list);
	
		return nvd;
	}

}
