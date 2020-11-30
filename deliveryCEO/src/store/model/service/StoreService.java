package store.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import store.model.dao.StoreDao;
import store.model.vo.Store;
import store.model.vo.StorePageData;

public class StoreService {

	public int insertStoreInfo(Store store) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		int result = new StoreDao().insertStoreInfo(conn, store);

		if (result > 0)
			JDBCTemplate.commit(conn);
		else
			JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);

		return result;
	}

	public ArrayList<Store> selectAllStore(String ceoId) {
		Connection conn = JDBCTemplate.getConnection();

		ArrayList<Store> listStore = new StoreDao().selectAllStore(conn, ceoId);
		JDBCTemplate.close(conn);

		return listStore;
	}

	public StorePageData selectAllStore(String ceoId, int reqPage) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		StoreDao dao = new StoreDao();

		int totalStore = dao.getTotalStore(conn, ceoId); // 총 스토어 개수를 구하는 DAO
		int numPerPage = 10; // 한 페이지당 표시할 게시물 수 설정 변수
		int totalPage = (totalStore / numPerPage) == 0 ? (totalStore / numPerPage) : (totalStore / numPerPage) + 1;

		int start = (reqPage - 1) * numPerPage + 1;
		int end = reqPage * numPerPage;

		ArrayList<Store> listStore = dao.selectAllStore(conn, ceoId, start, end);

		// 페이지 네이게이션
		int pageNaviSize = 5; // 페이지 네비게이션 길이 지정
		String pageNavi = ""; // 페이지 네비게이션 태그 작성

		// 페이지 네비 시작번호 구하기
		int pageNo = ((reqPage - 1) / pageNaviSize) * pageNaviSize + 1;

		// 이전 버튼 만들기
		if (pageNo != 1) {
			pageNavi += "<a class='btn' href='/CEO/selectAllStoreInfo?ceoId=" + ceoId + "&reqPage=" + (pageNo - 1)
					+ "'>이전</a>";
		}

		// 숫자 버튼 만들기
		for (int i = 0; i < pageNaviSize; i++) {
			if (reqPage == pageNo) {
				pageNavi += "<span class='selectPage'>" + pageNo + "</span>";
			} else {
				pageNavi += "<a class='btn' href='/CEO/selectAllStoreInfo?ceoId=" + ceoId + "&reqPage=" + pageNo + "'>"
						+ pageNo + "</a>";
			}
			pageNo++;
			if (pageNo > totalPage)
				break;
		}

		// 다음 버튼 만들기
		if (pageNo <= totalPage) {
			pageNavi += "<a class='btn' href='/CEO/selectAllStoreInfo?ceoId=" + ceoId + "&reqPage=" + pageNo + "'>다음</a>";
		}

		StorePageData spd = new StorePageData(listStore, pageNavi);
		JDBCTemplate.close(conn);

		return spd;
	}

	public Store selectOneStore(String ceoId, int storeNo) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		Store store = new StoreDao().selectOneStore(conn, ceoId, storeNo);
		JDBCTemplate.close(conn);

		return store;
	}

	public int updateStoreInfo(Store store) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		int result = new StoreDao().updateStoreInfo(conn, store);

		if (result > 0)
			JDBCTemplate.commit(conn);
		else
			JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);

		return result;
	}

	public int deleteStoreInfo(String ceoId, int storeNo) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		int result = new StoreDao().deleteStoreInfo(conn, ceoId, storeNo);

		if (result > 0)
			JDBCTemplate.commit(conn);
		else
			JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);

		return result;
	}
}
