package review.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import review.model.dao.ReviewDao;
import review.model.vo.Review;
import review.model.vo.ReviewPageData;

public class ReviewService {

	public ArrayList<Review> selectAllReview(String ceoId) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		ArrayList<Review> listReview = new ReviewDao().selectAllReview(conn, ceoId);
		JDBCTemplate.close(conn);

		return listReview;
	}

	public ReviewPageData selectAllReview(String ceoId, int reqPage) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		ReviewDao dao = new ReviewDao();

		int totalReview = dao.getTotalReview(conn, ceoId); // ceoId에 등록된 모든 가게의 리뷰의 갯수를 얻어옴
		int numPerPage = 10;
		int totalPage = (totalReview / numPerPage) == 0 ? (totalReview / numPerPage) : (totalReview / numPerPage) + 1;
		int start = (reqPage - 1) * numPerPage + 1;
		int end = reqPage * numPerPage;

		ArrayList<Review> listReview = dao.selectAllReview(conn, ceoId, start, end);

		// 페이지 네비게이션
		int pageNaviSize = 5;
		String pageNavi = "";
		int pageNo = ((reqPage - 1) / pageNaviSize) * pageNaviSize + 1;

		// 이전 버튼 만들기
		if (pageNo != 1) {
			pageNavi += "<a class='btn' href='/CEO/selectAllReview?ceoId=" + ceoId + "&reqPage=" + (pageNo - 1)
					+ "'>이전</a>";
		}

		// 숫자 버튼 만들기
		for (int i = 0; i < pageNaviSize; i++) {
			if (reqPage == pageNo) {
				pageNavi += "<span class='selectPage'>" + pageNo + "</span>";
			} else {
				pageNavi += "<a class='btn' href='/CEO/selectAllReview?ceoId=" + ceoId + "&reqPage=" + pageNo + "'>"
						+ pageNo + "</a>";
			}
			pageNo++;
			if (pageNo > totalPage)
				break;
		}

		// 다음 버튼 만들기
		if (pageNo <= totalPage) {
			pageNavi += "<a class='btn' href='/CEO/selectAllReview?ceoId=" + ceoId + "&reqPage=" + pageNo + "'>다음</a>";
		}

		ReviewPageData rpd = new ReviewPageData(listReview, pageNavi);
		JDBCTemplate.close(conn);

		return rpd;
	}

	public Review selectOneReview(int reviewNo) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		Review review = new ReviewDao().selectOneReview(conn, reviewNo);
		JDBCTemplate.close(conn);

		return review;
	}

}
