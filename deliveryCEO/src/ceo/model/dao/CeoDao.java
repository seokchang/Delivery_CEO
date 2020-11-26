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
	public Ceo selectOneCeo(Connection conn,  Ceo ceo) {
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
		Ceo ceo = null;
		System.out.println("DAO>"+ceoId);//여까지는 값 받아오고
		String query = "select * from CEO_DB where ceo_id=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ceoId);
			rset = pstmt.executeQuery();
			//커밋도 했는데 왜 안되는거지
			if(rset.next()) {
				ceo = new Ceo();
				ceo.setCeoId(rset.getString("ceo_id"));
				ceo.setCeoPw(rset.getString("ceo_pw"));
				ceo.setCeoName(rset.getString("ceo_name"));
				ceo.setCeoTel(rset.getString("ceo_tel"));
				ceo.setCeoAddr(rset.getString("ceo_addr"));
				ceo.setCeoEnroll(rset.getString("ceo_Enroll"));
				
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return ceo;
	}
	public Ceo searchId(Connection conn, String ceoName, String ceoTel) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from CEO_DB where ceo_name=? and ceo_tel=?";
		Ceo ceo = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,ceoName);
			pstmt.setString(2,ceoTel+"  ");
			rset = pstmt.executeQuery();
			if(rset.next()) {
				ceo = new Ceo();
				ceo.setCeoId(rset.getString("ceo_id"));
				ceo.setCeoPw(rset.getString("ceo_pw"));
				ceo.setCeoName(rset.getString("ceo_name"));
				ceo.setCeoTel(rset.getString("ceo_tel"));
				ceo.setCeoAddr(rset.getString("ceo_addr"));
				ceo.setCeoEnroll(rset.getString("ceo_Enroll"));	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		System.out.println("dao : "+ ceo);
		return ceo;
	}
	public Ceo searchPw(Connection conn, String ceoId, String ceoName, String ceoTel) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from CEO_DB where ceo_id=? and ceo_tel=?";
		Ceo ceo = null;
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, ceoId);
				pstmt.setString(2,ceoTel+"  ");
				rset = pstmt.executeQuery();
				while(rset.next()) {
					ceo = new Ceo();
					ceo.setCeoId(rset.getString("ceo_id"));
					ceo.setCeoPw(rset.getString("ceo_pw"));
					ceo.setCeoName(rset.getString("ceo_name"));
					ceo.setCeoTel(rset.getString("ceo_tel"));
					ceo.setCeoAddr(rset.getString("ceo_addr"));
					ceo.setCeoEnroll(rset.getString("ceo_Enroll"));	
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(rset);
				JDBCTemplate.close(pstmt);
			}
		
		
		
		
		
		return ceo;
	}
	public int updateCeo(Connection conn, Ceo ceo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "update CEO_DB set ceo_pw =?, ceo_tel=?, ceo_addr=? where ceo_Id=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ceo.getCeoPw());
			pstmt.setString(2, ceo.getCeoTel());
			pstmt.setString(3, ceo.getCeoAddr());
			pstmt.setString(4, ceo.getCeoId());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	public int deleteCeo(Connection conn, String ceoId) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "delete from CEO_DB where ceo_id=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ceoId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}



}
