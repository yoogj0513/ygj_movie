<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	* {
		margin: 0;
		padding: 0;
	}
	
	div.movie_none {
		height: 600px;
		line-height: 600px;
	}
	
	div.movie_none h1 {
		color: #344d2f;
	}
	
	.timetable {
		width: 1000px;
		margin: 0 auto;
		min-height: 660px;
	}
	
	.timetable h2 {
		text-align: center;
		margin-bottom: 15px;
	}
	
	.timetable table {
		border-collapse: collapse;
		width: 100%;
	}
	
	.timetable table tr, td, th {
		border: 1px solid #000;
	}
	
	.timetable table td, th {
		padding: 5px;
	}
	
	.timetable table th {
		width: 200px;
	}
</style>

<jsp:include page="../include/header.jsp" flush="false"/>

<section class="timetable">
	<h2>&lt; 상영 시간표 &gt;</h2>
	<c:choose>
		<c:when test="${list == null }">
			<div class="movie_none">
				<h1>상영영화가 없습니다.</h1>
			</div>
		</c:when>
		<c:otherwise>
			<table>
				<c:forEach var="list" items="${list }" varStatus="status">
					<tr>
						<th>${list.mTitle }</th>
						<td>${list.mTime }</td>
					</tr>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
</section>

<jsp:include page="../include/footer.jsp" flush="false"/>
