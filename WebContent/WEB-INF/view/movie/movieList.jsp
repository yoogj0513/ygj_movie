<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
	* {
		margin: 0;
		padding: 0;
	}
	
	.addWrap {
		text-align: right;
		margin-top: 50px;
	}
	
	.addWrap a{
		background-color: #fac57d;
		border-radius: 5px;
		text-decoration: none;
		color: #fff;
		font-weight: bold;
		padding: 5px 10px;
	}
	
	div.list_none {
		height: 600px;
		line-height: 600px;
	}
	
	div.list_none h1 {
		color: #344d2f;
	}
	
	#movieList {
		padding: 0 50px;
		overflow: hidden;
		min-height: 590px;
	}
	
	.movie_list {
		border:1px solid #000;
		text-align: center;
		width: 300px;
		float: left;
		margin-right: 25px;
		margin-top: 20px;
	}
	
	.movie_list:nth-child(5n){
		margin-right: 0;
	}
	
	.movie_list a {
		display: block;
		text-decoration: none;
		color: #000;
	}
	
	.movie_list img {
		width: 100%;
		height: 420px;
	}
	
	.movie_list p {
		padding: 15px 0;
		font-size: 20px;
	}
	
	.movie_list a:hover p {
		font-weight: bold;
		color: #fac57d;
	}
	
	.movie_list:hover {
		border:1px solid #a81817;
	}
	
</style>

<jsp:include page="../include/header.jsp" flush="false"/>

<section id="movieList">
	<c:choose>
		<c:when test="${list == null}">
			<div class="list_none">
				<h1>상영영화가 없습니다.</h1>
			</div>
		</c:when>
		<c:otherwise>
			<c:forEach var="list" items="${list }" varStatus="status">
				<div class="movie_list">
					<a href="detail.do?no=${list.mNo }" >
						<img src="${pageContext.request.contextPath}/upload/${list.mFile}" alt="${list.mTitle }" />
						<p>${list.mTitle }</p>
					</a>
				</div>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</section>
<div class="addWrap">
	<a href="add.do">상영 영화 추가하기</a>
</div>

<jsp:include page="../include/footer.jsp" flush="false"/>
