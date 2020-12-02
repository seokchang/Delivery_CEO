package menu.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import menu.model.dao.MenuDao;
import menu.model.vo.Menu;
import menu.model.vo.MenuPageData;

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

	public MenuPageData selectAllMenu(int storeNo, int reqPage) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		MenuDao dao = new MenuDao();

		int totalMenu = dao.getTotalMenu(conn, storeNo);
		int numPerPage = 10;
		int totalPage = (totalMenu / numPerPage) == 0 ? (totalMenu / numPerPage) : (totalMenu / numPerPage) + 1;
		int start = (reqPage - 1) * numPerPage + 1;
		int end = reqPage * numPerPage;

		ArrayList<Menu> listMenu = new MenuDao().selectAllMenu(conn, storeNo, start, end);

		// 페이징 처리
		int pageNaviSize = 5;
		String pageNavi = "";
		int pageNo = ((reqPage - 1) / pageNaviSize) * pageNaviSize + 1;

		// 이전 버튼 만들기
		if (pageNo != 1) {
			pageNavi += "<a class='btn' href='/CEO/selectAllMenu?storeNo=" + storeNo + "&reqPage=" + (pageNo - 1)
					+ "'>이전</a>";
		}

		// 숫자 버튼 만들기
		for (int i = 0; i < pageNaviSize; i++) {
			if (reqPage == pageNo) {
				pageNavi += "<span class='selectPage'>" + pageNo + "</span>";
			} else {
				pageNavi += "<a class='btn' href='/CEO/selectAllMenu?storeNo=" + storeNo + "&reqPage=" + pageNo + "'>"
						+ pageNo + "</a>";
			}
			pageNo++;
			if (pageNo > totalPage)
				break;
		}

		// 다음 버튼 만들기
		if (pageNo <= totalPage) {
			pageNavi += "<a class='btn' href='/CEO/selectAllMenu?storeNo=" + storeNo + "&reqPage=" + pageNo
					+ "'>다음</a>";
		}

		MenuPageData mpd = new MenuPageData(listMenu, pageNavi);
		JDBCTemplate.close(conn);

		return mpd;
	}

}
