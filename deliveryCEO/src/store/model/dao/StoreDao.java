package store.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import store.model.vo.Store;

public class StoreDao {

	public int insertStoreInfo(Connection conn, Store store) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;

		int result = 0;
		String query = "INSERT INTO store_db VALUES (store_db_seq.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ,?)";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, store.getStoreCEO());
			pstmt.setString(2, store.getStoreAddr());
			pstmt.setString(3, store.getStoreTel());
			pstmt.setString(4, store.getStoreDet());
			pstmt.setString(5, store.getStoreName());
			pstmt.setInt(6, store.getStoreCateId());
			pstmt.setString(7, store.getStoreStartTime());
			pstmt.setString(8, store.getStoreEndTime());
			pstmt.setString(9, store.getStoreFilePath());
			pstmt.setString(10, store.getStoreFileName());
			pstmt.setString(11, store.getStoreRest());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public ArrayList<Store> selectAllStore(Connection conn, String ceoId) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		ArrayList<Store> listStore = new ArrayList<Store>();
		String query = "SELECT * FROM store_db WHERE store_ceo=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ceoId);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Store store = new Store();

				store.setStoreNo(rset.getInt("store_no"));
				store.setStoreCEO(rset.getString("store_ceo"));
				store.setStoreAddr(rset.getString("store_addr"));
				store.setStoreTel(rset.getString("store_tel"));
				store.setStoreDet(rset.getString("store_det"));
				store.setStoreName(rset.getString("store_name"));
				store.setStoreCateId(rset.getInt("store_cate_id"));
				store.setStoreStartTime(rset.getString("store_start_t"));
				store.setStoreEndTime(rset.getString("store_end_t"));
				store.setStoreFilePath(rset.getString("store_filepath"));
				store.setStoreFileName(rset.getString("store_filename"));
				store.setStoreRest(rset.getString("store_rest"));

				listStore.add(store);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return listStore;
	}

	public Store selectOneStore(Connection conn, String ceoId, int storeNo) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		Store store = null;
		String query = "SELECT * FROM store_db WHERE store_ceo=? AND store_no=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ceoId);
			pstmt.setInt(2, storeNo);
			rset = pstmt.executeQuery();

			if (rset.next()) {
				store = new Store();

				store.setStoreNo(rset.getInt("store_no"));
				store.setStoreCEO(rset.getString("store_ceo"));
				store.setStoreAddr(rset.getString("store_addr"));
				store.setStoreTel(rset.getString("store_tel"));
				store.setStoreDet(rset.getString("store_det"));
				store.setStoreName(rset.getString("store_name"));
				store.setStoreCateId(rset.getInt("store_cate_id"));
				store.setStoreStartTime(rset.getString("store_start_t"));
				store.setStoreEndTime(rset.getString("store_end_t"));
				store.setStoreFilePath(rset.getString("store_filepath"));
				store.setStoreFileName(rset.getString("store_filename"));
				store.setStoreRest(rset.getString("store_rest"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return store;
	}

	public int updateStoreInfo(Connection conn, Store store) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;

		int result = 0;
		String query = "UPDATE store_db SET store_cate_id=?, store_name=?, store_addr=?, store_tel=?,"
				+ "store_start_t=?, store_end_t=?, store_rest=?, store_filename=?, store_filepath=?, store_det=? WHERE store_ceo=? AND store_no=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, store.getStoreCateId());
			pstmt.setString(2, store.getStoreName());
			pstmt.setString(3, store.getStoreAddr());
			pstmt.setString(4, store.getStoreTel());
			pstmt.setString(5, store.getStoreStartTime());
			pstmt.setString(6, store.getStoreEndTime());
			pstmt.setString(7, store.getStoreRest());
			pstmt.setString(8, store.getStoreFileName());
			pstmt.setString(9, store.getStoreFilePath());
			pstmt.setString(10, store.getStoreDet());
			pstmt.setString(11, store.getStoreCEO());
			pstmt.setInt(12, store.getStoreNo());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public int deleteStoreInfo(Connection conn, String ceoId, int storeNo) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;

		int result = 0;
		String query = "DELETE FROM store_db WHERE store_ceo=? AND store_no=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ceoId);
			pstmt.setInt(2, storeNo);

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
