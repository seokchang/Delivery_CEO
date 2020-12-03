package ceo.model.service;

import java.sql.Connection;

import ceo.model.dao.CeoDao;
import ceo.model.vo.Ceo;
import common.JDBCTemplate;

public class CeoService {
	public int insertCeo(Ceo ceo) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new CeoDao().insertCeo(conn,ceo);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	public Ceo selectOneCeo(Ceo ceo) {
		Connection conn = JDBCTemplate.getConnection();
		Ceo loginCeo = new CeoDao().selectOneCeo(conn,ceo);
		JDBCTemplate.close(conn);
		return loginCeo;
	}

	public Ceo selectOneCeo(String ceoId) {
		Connection conn = JDBCTemplate.getConnection();
		Ceo ceo = new CeoDao().selectOneCeo(conn,ceoId);
		System.out.println("service"+ceo);
		JDBCTemplate.close(conn);
		
		return ceo;
	}

	public Ceo searchId(String ceoName, String ceoTel) {
		Connection conn = JDBCTemplate.getConnection();
		Ceo ceo = new CeoDao().searchId(conn,ceoName,ceoTel);
		JDBCTemplate.close(conn);
		return ceo;
	}

	public Ceo searchPw(String ceoId, String ceoTel, String ceoName) {
		Connection conn = JDBCTemplate.getConnection();
		Ceo ceo = new CeoDao().searchPw(conn, ceoId, ceoName, ceoTel);
		JDBCTemplate.close(conn);
		
		return ceo;
	}

	public int updateCeo(Ceo ceo) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new CeoDao().updateCeo(conn,ceo);
		if(result> 0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	public int deleteCeo(String ceoId) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new CeoDao().deleteCeo(conn,ceoId);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}






}
