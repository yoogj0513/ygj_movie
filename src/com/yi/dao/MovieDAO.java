package com.yi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yi.jdbc.JDBCUtil;
import com.yi.model.Movie;

public class MovieDAO {
	private static MovieDAO dao = new MovieDAO();
	
	public static MovieDAO getInstent() {
		return dao;
	}
	
	private MovieDAO() {};
	
	public void insert(Connection conn, Movie movie) throws SQLException {
		PreparedStatement pstmt = null;
		
		try {
			String sql = "insert into movie values (null, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, movie.getmTitle());
			pstmt.setString(2, movie.getmExplain());
			pstmt.setString(3, movie.getmFile());
			pstmt.setString(4, movie.getmTime());
			pstmt.executeUpdate();
		} finally {
			JDBCUtil.close(pstmt);
		}
	}
	
	public List<Movie> list(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from movie";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			List<Movie> list = new ArrayList<Movie>();
			while(rs.next()) {
				Movie m = new Movie(rs.getInt(1), 
									rs.getString(2), 
									rs.getString(3), 
									rs.getString(4), 
									rs.getString(5));
				list.add(m);
			}
			
			return list;
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
	}
	
	public Movie selectByNo(Connection conn, int no) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from movie where m_no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				Movie m = new Movie(rs.getInt(1), 
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getString(5));
				
				return m;
			}
			
			return null;
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
	}
	
}
