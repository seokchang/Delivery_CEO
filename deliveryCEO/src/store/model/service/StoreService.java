package store.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import store.model.dao.StoreDao;
import store.model.vo.Store;

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
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		ArrayList<Store> listStore = new StoreDao().selectAllStore(conn, ceoId);
		JDBCTemplate.close(conn);

		return listStore;
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
