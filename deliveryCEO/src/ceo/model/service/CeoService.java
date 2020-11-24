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
		Ceo loginCeo = new CeoDao().selectOneCeo(conn,ceoId);
		JDBCTemplate.close(conn);
		return loginCeo;
	}


}
