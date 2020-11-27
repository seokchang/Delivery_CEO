package review.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import review.model.dao.ReviewDao;
import review.model.vo.Review;

public class ReviewService {

	public ArrayList<Review> selectAllReview(String ceoId) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Review> listReview = new ReviewDao().selectAllReview(conn, ceoId);
		JDBCTemplate.close(conn);
		
		return listReview;
	}

}
