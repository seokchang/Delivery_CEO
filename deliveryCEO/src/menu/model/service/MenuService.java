package menu.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import menu.model.dao.MenuDao;
import menu.model.vo.Menu;

public class MenuService {

	public int insertMenu(Menu menu) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		int result = new MenuDao().insertMenu(conn, menu);

		if (result > 0)
			JDBCTemplate.commit(conn);
		else
			JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);

		return result;
	}

	public ArrayList<Menu> selectAllMenu(int storeNo) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		ArrayList<Menu> listMenu = new MenuDao().selectAllMenu(conn, storeNo);
		JDBCTemplate.close(conn);

		return listMenu;
	}

	public Menu selectOneMenu(int menuNo) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		Menu menu = new MenuDao().selectOneMenu(conn, menuNo);
		JDBCTemplate.close(conn);

		return menu;
	}

	public int deleteMenu(int menuNo) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		int result = new MenuDao().deleteMenu(conn, menuNo);

		if (result > 0)
			JDBCTemplate.commit(conn);
		else
			JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);

		return result;
	}

	public int updateMenu(Menu menu) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		int result = new MenuDao().updateMenu(conn, menu);

		if (result > 0)
			JDBCTemplate.commit(conn);
		else
			JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);

		return result;
	}

}
