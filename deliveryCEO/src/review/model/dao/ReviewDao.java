package review.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import review.model.vo.Review;

public class ReviewDao {
	public int getTotalReview(Connection conn, String ceoId) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		int totalReview = 0;
		String query = "SELECT COUNT(*) cnt FROM (SELECT * FROM rev_db WHERE rev_store IN (SELECT store_no FROM store_db WHERE store_ceo=?))";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ceoId);
			rset = pstmt.executeQuery();

			if (rset.next()) {
				totalReview = rset.getInt("cnt");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return totalReview;
	}

	public ArrayList<Review> selectAllReview(Connection conn, String ceoId) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		ArrayList<Review> listReview = new ArrayList<Review>();
		String query = "SELECT * FROM rev_db WHERE rev_store IN (SELECT store_no FROM store_db WHERE store_ceo=?)";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ceoId);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Review review = new Review();

				review.setReviewNo(rset.getInt("rev_no"));
				review.setReviewOrderNo(rset.getInt("rev_ord_no"));
				review.setReviewScore(rset.getInt("rev_score"));
				review.setReviewContent(rset.getString("rev_content"));
				review.setReviewClientId(rset.getString("rev_cli_id"));
				review.setReviewStore(rset.getInt("rev_store"));
				review.setReviewEntrollDate(rset.getString("rev_enroll_date"));

				listReview.add(review);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return listReview;
	}

	public ArrayList<Review> selectAllReview(Connection conn, String ceoId, int start, int end) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		ArrayList<Review> listReview = new ArrayList<Review>();
		String query = "SELECT * FROM (SELECT ROWNUM AS rnum, review.* FROM (SELECT * FROM rev_db WHERE rev_store IN (SELECT store_no FROM store_db WHERE store_ceo=?) ORDER BY 1 DESC)review) WHERE rnum BETWEEN ? AND ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ceoId);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Review review = new Review();

				review.setRowNum(rset.getInt("rnum"));
				review.setReviewNo(rset.getInt("rev_no"));
				review.setReviewOrderNo(rset.getInt("rev_ord_no"));
				review.setReviewScore(rset.getInt("rev_score"));
				review.setReviewContent(rset.getString("rev_content"));
				review.setReviewClientId(rset.getString("rev_cli_id"));
				review.setReviewStore(rset.getInt("rev_store"));
				review.setReviewEntrollDate(rset.getString("rev_enroll_date"));

				listReview.add(review);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return listReview;
	}
}
