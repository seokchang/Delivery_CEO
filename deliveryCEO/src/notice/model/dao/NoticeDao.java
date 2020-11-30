package notice.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import notice.model.vo.Notice;
import notice.model.vo.NoticeComment;

public class NoticeDao {

	public int totalCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String query = "select count(*) cnt from NOTICE_DB";

		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				result = rset.getInt("cnt");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public ArrayList<Notice> selectList(Connection conn, int start, int end) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Notice> list = new ArrayList<Notice>();
		String query = "select * from(select rownum as rnum, n.* from (select * from NOTICE_DB order by 1 desc)n) where rnum between ? and ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rset = pstmt.executeQuery();
			while (rset.next()) {
				Notice n = new Notice();
				n.setrNum(rset.getInt("rnum"));
				n.setNoticeNo(rset.getInt("notice_no"));
				n.setNoticeTitle(rset.getString("notice_title"));
				n.setNoticeAdminId(rset.getString("notice_admin_id"));
				n.setNoticeEnroll(rset.getString("notice_enroll_date"));
				list.add(n);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}

	public Notice selectOneNotice(Connection conn, int noticeNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Notice n = null;

		String query = "select * from NOTICE_DB where notice_no=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, noticeNo);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				n = new Notice();
				n.setNoticeNo(rset.getInt("notice_no"));
				n.setNoticeTitle(rset.getString("notice_title"));
				n.setNoticeAdminId(rset.getString("notice_admin_id"));
				n.setNoticeContent(rset.getString("notice_content"));
				n.setNoticeEnroll(rset.getString("notice_enroll_date"));
				n.setFilename(rset.getString("filename"));
				n.setFilepath(rset.getString("filepath"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return n;
	}

	public ArrayList<NoticeComment> selectNoticeCommentList(Connection conn, int noticeNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from notice_comment where notice_ref=? order by 1";
		ArrayList<NoticeComment> list = new ArrayList<NoticeComment>();
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, noticeNo);
			rset = pstmt.executeQuery();
			while (rset.next()) {
				NoticeComment nc = new NoticeComment();
				nc.setNoticeCommentNo(rset.getInt("notice_comment_no"));
				nc.setNoticeCommentLevel(rset.getInt("notice_comment_level"));
				nc.setNoticeCommentWriter(rset.getString("notice_comment_writer"));
				nc.setNoticeCommentContent(rset.getString("notice_comment_content"));
				nc.setNoticeRef(rset.getInt("notice_ref"));
				nc.setNoticeCommentRef(rset.getInt("notice_comment_ref"));
				nc.setNoticeCommentDate(rset.getString("notice_comment_date"));
				list.add(nc);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return list;
	}

	public ArrayList<Notice> selectAllNotice(Connection conn) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		ArrayList<Notice> listNotice = new ArrayList<Notice>();
		String query = "SELECT * FROM notice_db";

		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Notice n = new Notice();

				n.setNoticeTitle(rset.getString("notice_title"));
				n.setNoticeEnroll(rset.getString("notice_enroll_date"));

				listNotice.add(n);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return listNotice;
	}
}
