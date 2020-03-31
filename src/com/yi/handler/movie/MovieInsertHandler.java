package com.yi.handler.movie;

import java.io.File;
import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.yi.dao.MovieDAO;
import com.yi.jdbc.JDBCUtil;
import com.yi.model.Movie;
import com.yi.mvc.CommandHandler;

public class MovieInsertHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		if(req.getMethod().equalsIgnoreCase("get")) {
			return "/WEB-INF/view/movie/movieForm.jsp";
		} else if (req.getMethod().equalsIgnoreCase("post")) {
			String uploadPath = req.getRealPath("upload");
			File dir = new File(uploadPath);
			if(dir.exists() == false) {
				dir.mkdir();
			}
			//System.out.println(uploadPath); //이미지 경로 확인
			int size = 1024*1024*10;
			
			MultipartRequest multi = new MultipartRequest(req, 
														uploadPath, 
														size, 
														"UTF-8",
														new DefaultFileRenamePolicy());
			
			Connection conn = null;
			
			try {
				conn = JDBCUtil.getConnection();
				MovieDAO dao = MovieDAO.getInstent();
				Movie movie = new Movie(0, 
										multi.getParameter("title"), 
										multi.getParameter("explain"), 
										multi.getFilesystemName("file"), 
										multi.getParameter("time"));
				dao.insert(conn, movie);
				
				res.sendRedirect(req.getContextPath()+"/list.do");
				return null;
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				JDBCUtil.close(conn);
			}
		}
		return null;
	}

}
