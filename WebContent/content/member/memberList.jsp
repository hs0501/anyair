
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<center>
		<br>
		<br>




		<div class="container">

			<div class="leave-comments" style="width: 70%;">
				<h1 class="reply-title">회원 목록</h1>
				<form class="reply-form"  >

					<div class="row">

						<div class="form-group">
							<div class="col-md-12">
								<table class="reply-forml">
									<tr>
										<th>아이디&nbsp&nbsp&nbsp&nbsp</th>
										<th>이름&nbsp&nbsp&nbsp&nbsp</th>
										<th>이메일&nbsp&nbsp&nbsp&nbsp</th>
										<th>블로그&nbsp&nbsp&nbsp&nbsp</th>
										<th>가입일&nbsp&nbsp&nbsp&nbsp</th>
									</tr>
									<c:forEach var="member" items="${memberList}">
									<tr>
										<td>${member.id }&nbsp&nbsp&nbsp&nbsp</td>
										<td>${member.name }&nbsp&nbsp&nbsp&nbsp</td>
										<td>${member.email }&nbsp&nbsp&nbsp&nbsp</td>
										<td>${member.blog }&nbsp&nbsp&nbsp&nbsp</td>
										<td>${member.reg_date }&nbsp&nbsp&nbsp&nbsp</td>
									</tr>
									</c:forEach>

								</table>
							</div>
						</div>



					</div>
				</form>
			</div>

		</div>





		<br>
		<br>
	</center>

</body>
</html>