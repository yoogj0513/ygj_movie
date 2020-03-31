<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	* {
		margin: 0;
		padding: 0;
	}
	
	section {
		margin-bottom: 30px;
		text-align: center;
		position: relative;
	}
	
	section p {
		position: absolute;
		top: 30px;
		left: 125px;
		color: #fff;
		font-size: 25px;
		font-weight: bold;
	}
	
	section img {
		width: 90%;
	}
</style>

<jsp:include page="../include/header.jsp" flush="false"/>

<section>
	<p>대구 CGV</p>
	<img src="image/cgvdaegu.jpg" alt="대구CGV" />
</section>

<jsp:include page="../include/footer.jsp" flush="false"/>