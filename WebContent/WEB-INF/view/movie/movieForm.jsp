<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	* {
		margin: 0;
		padding: 0;
	}
	
	section.addMovie {
		width: 600px;
		margin: 0 auto;
		min-height: 640px;
		margin-top: 50px;
	}
	
	fieldset {
		padding: 20px;
	}
	
	.addMovie p {
		margin: 15px 0;
	}
	
	.addMovie label {
		margin: 5px 0;
		display: inline-block;
	}
	
	.addMovie textarea {
		padding: 10px;
	}
	
	.addMovie p.subBtn {
		text-align: center;
	}
	
	input[type='submit'] {
		padding: 5px 10px;
		background-color: #fac57d;
		color: #fff;
		border: none;
		font-weight: bold;
		border-radius: 5px;
		font-size: 16px;
	}
</style>

<jsp:include page="../include/header.jsp" flush="false"/>

<section class="addMovie">
	<form action="add.do" method="post" enctype="multipart/form-data">
		<fieldset>
			<legend>영화정보</legend>
			<p>
				<label>제목 : </label>
				<input type="text" name="title" placeholder="영화 이름"/>
			</p>
			<p>
				<label>상세 설명 : </label><br>
				<textarea rows="15" cols="70" placeholder="영화 상세 설명" name="explain"></textarea>
			</p>
			<p>
				<label>파일 : </label>
				<input type="file" name="file"/>
			</p>
			<p>
				<label>상영 시간 : </label>
				<input type="text" name="time" placeholder="경로"/>
			</p>
			<p class="subBtn">
				<input type="submit" value="전송" />
			</p>
		</fieldset>
	</form>
</section>

<jsp:include page="../include/footer.jsp" flush="false"/>