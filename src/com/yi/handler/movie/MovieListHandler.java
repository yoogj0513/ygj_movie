package com.yi.handler.movie;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yi.dao.MovieDAO;
import com.yi.jdbc.JDBCUtil;
import com.yi.model.Movie;
import com.yi.mvc.CommandHandler;

public class MovieListHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		Connection conn = null;
		
		try {
			conn = JDBCUtil.getConnection();
			MovieDAO dao = MovieDAO.getInstent();
			List<Movie> list = dao.list(conn);
			
			req.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}
		
		return "/WEB-INF/view/movie/movieList.jsp";
	}

}
