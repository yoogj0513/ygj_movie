package com.yi.dao.test;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.yi.dao.MovieDAO;
import com.yi.jdbc.DBCPInit;
import com.yi.jdbc.JDBCUtil;
import com.yi.model.Movie;

public class MovieDAOTest {
	Connection conn = null;
	MovieDAO dao = null;
	
	@Before
	public void before() {
		try {
			DBCPInit dbcpInit = new DBCPInit();
			dbcpInit.init();
			conn = JDBCUtil.getConnection();
			dao = MovieDAO.getInstent();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@After
	public void after() {
		// @Test가 작동이 완료후 실행 (닫기)
		JDBCUtil.close(conn);
	}
	
	@Test
	public void test01Insert() throws SQLException {
		Movie movie = new Movie(1, 
								"부산행", 
								"정체불명의 바이러스가 전국으로 확산되고 대한민국 긴급재난경보령이 선포된 가운데,열차에 몸을 실은 사람들은 단 하나의 안전한 도시 부산까지 살아가기 위한 치열한 사투를 벌이게 된다. 서울에서 부산까지의 거리 442KM 지키고 싶은, 지켜야만 하는 사람들의 극한의 사투!", 
								"busan.jpg", 
								"14:30, 17:00, 19:30");
		dao.insert(conn, movie);
	}
	
	@Test
	public void test02List() throws SQLException {
		List<Movie> list = dao.list(conn);
		for(Movie movie : list) {
			System.out.println(movie);
		}
	}
	
	@Test
	public void test03SelectByNo() throws SQLException {
		int no = 1;
		dao.selectByNo(conn, no);
	}
}
