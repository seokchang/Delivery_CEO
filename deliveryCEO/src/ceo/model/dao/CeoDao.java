package ceo.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ceo.model.vo.Ceo;
import common.JDBCTemplate;

public class CeoDao {

	public int insertCeo(Connection conn, Ceo ceo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "insert into CEO_DB values(?,?,?,?,?,to_char(sysdate,'yyyy-mm-dd'))";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ceo.getCeoId());
			pstmt.setString(2, ceo.getCeoPw());
			pstmt.setString(3, ceo.getCeoName());
			pstmt.setString(4, ceo.getCeoTel());
			pstmt.setString(5, ceo.getCeoAddr());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	public Ceo selectOneCeo(Connection conn, Ceo ceo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Ceo loginCeo = null;
		String query = "select * from CEO_DB where ceo_id=? and ceo_pw=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ceo.getCeoId());
			pstmt.setString(2, ceo.getCeoPw());
			rset = pstmt.executeQuery();
			if(rset.next()) {
				loginCeo = new Ceo();
				loginCeo.setCeoId(rset.getString("ceo_id"));
				loginCeo.setCeoPw(rset.getString("ceo_pw"));
				loginCeo.setCeoName(rset.getString("ceo_name"));
				loginCeo.setCeoTel(rset.getString("ceo_tel"));
				loginCeo.setCeoAddr(rset.getString("ceo_addr"));
				loginCeo.setCeoEnroll(rset.getString("ceo_Enroll"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return loginCeo;
	}
	public Ceo selectOneCeo(Connection conn, String ceoId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Ceo loginCeo = null;
		String query = "select * from CEO_DB where ceo_id=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ceoId);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				loginCeo = new Ceo();
				loginCeo.setCeoId(rset.getString("ceo_id"));
				loginCeo.setCeoPw(rset.getString("ceo_pw"));
				loginCeo.setCeoName(rset.getString("ceo_name"));
				loginCeo.setCeoTel(rset.getString("ceo_tel"));
				loginCeo.setCeoAddr(rset.getString("ceo_addr"));
				loginCeo.setCeoEnroll(rset.getString("ceo_Enroll"));		
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return loginCeo;
	}

}
