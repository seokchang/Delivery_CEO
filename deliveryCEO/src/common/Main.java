package common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Main {
	public static void main(String[] args) {
		String ceoId = "";
		String ceoPw = "";
		String ceoName = "";
		String ceoTel = "";
		String ceoAddr = "";
		String ceoEnroll = "";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select * from ceo_db";

		try {
			conn = JDBCTemplate.getConnection();
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				ceoId = rset.getString(1);
				ceoPw = rset.getString(2);
				ceoName = rset.getString(3);
				ceoTel = rset.getString(4);
				ceoAddr = rset.getString(5);
				ceoEnroll = rset.getString(6);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(conn);
		}

		System.out.println(ceoId);
		System.out.println(ceoPw);
		System.out.println(ceoName);
		System.out.println(ceoTel);
		System.out.println(ceoAddr);
		System.out.println(ceoEnroll);
	}
}
