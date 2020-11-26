package menu.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import menu.model.vo.Menu;

public class MenuDao {

	public int insertMenu(Connection conn, Menu menu) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;

		int result = 0;
		String query = "INSERT INTO menu_db VALUES (menu_db_seq.NEXTVAL, ?, ?, ?, ?, ?, ?)";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, menu.getMenuPrice());
			pstmt.setInt(2, menu.getMenuStoreNo());
			pstmt.setString(3, menu.getMenuDetail());
			pstmt.setString(4, menu.getMenuName());
			pstmt.setString(5, menu.getMenuFilePath());
			pstmt.setString(6, menu.getMenuFileName());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public ArrayList<Menu> selectAllMenu(Connection conn, int storeNo) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		ArrayList<Menu> listMenu = new ArrayList<Menu>();
		String query = "SELECT * FROM menu_db WHERE menu_store_no=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, storeNo);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Menu menu = new Menu();

				menu.setMenuNo(rset.getInt("menu_no"));
				menu.setMenuPrice(rset.getInt("menu_price"));
				menu.setMenuStoreNo(rset.getInt("menu_store_no"));
				menu.setMenuDetail(rset.getString("menu_det"));
				menu.setMenuName(rset.getString("menu_name"));
				menu.setMenuFileName(rset.getString("menu_filename"));
				menu.setMenuFilePath(rset.getString("menu_filepath"));

				listMenu.add(menu);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return listMenu;
	}

	public Menu selectOneMenu(Connection conn, int menuNo) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		Menu menu = null;
		String query = "SELECT * FROM menu_db WHERE menu_no=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, menuNo);
			rset = pstmt.executeQuery();

			if (rset.next()) {
				menu = new Menu();

				menu.setMenuNo(rset.getInt("menu_no"));
				menu.setMenuPrice(rset.getInt("menu_price"));
				menu.setMenuStoreNo(rset.getInt("menu_store_no"));
				menu.setMenuDetail(rset.getString("menu_det"));
				menu.setMenuName(rset.getString("menu_name"));
				menu.setMenuFileName(rset.getString("menu_filename"));
				menu.setMenuFilePath(rset.getString("menu_filepath"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return menu;
	}

	public int deleteMenu(Connection conn, int menuNo) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;

		int result = 0;
		String query = "DELETE FROM menu_db WHERE menu_no=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, menuNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}

		return result;
	}

	public int updateMenu(Connection conn, Menu menu) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;

		int result = 0;
		String query = "UPDATE menu_db SET menu_price=?, menu_det=?, menu_name=?, menu_filepath=?, menu_filename=? WHERE menu_no=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, menu.getMenuPrice());
			pstmt.setString(2, menu.getMenuDetail());
			pstmt.setString(3, menu.getMenuName());
			pstmt.setString(4, menu.getMenuFilePath());
			pstmt.setString(5, menu.getMenuFileName());
			pstmt.setInt(6, menu.getMenuNo());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
}
