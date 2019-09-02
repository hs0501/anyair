<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script language="javascript">
	function begin() {
		document.myform.id.focus();
	}
	function checkIt() {
		if (!document.myform.id.value) {
			alert("아이디을 입력하지 않으셨습니다.");
			document.myform.id.focus();
			return false;
		}
		if (!document.myform.passwd.value) {
			alert("비밀번호를 입력하지 않으셨습니다.");
			document.myform.passwd.focus();
			return false;
		}
	}
</script>
</head>
<BODY>
	


		<c:if test="${sessionID==null}">

<center>

			<br/>
<br/>
<br/>


			
				<div class="single-widget-area" style="width: 25%;">
					<div class="newsletter-form">

						<form class="reply-form"
							action="<%=request.getContextPath() %>/member/loginPro"
							method="post" onSubmit="return checkIt()">


							
								<div class="col-md-12">
									 <INPUT type="text"
										name="id" size="15" maxlength="50" class="form-control mb-30"
										placeholder="Your Id" required> <INPUT type="password"
										name="passwd" size="15" maxlength="12"
										class="form-control mb-30" placeholder="Your Password"
										required> 
										
										<div class="col-12 text-center wow fadeInUp" data-wow-delay="100ms" style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
                                    <input  type="submit"
										value="로그인"class="btn roberto-btn mt-15"  >
                                    <input  type="button" value="회원가입"
										onclick="javascript:window.location='<%=request.getContextPath()%>/member/input'" class="btn roberto-btn mt-15">
                                </div>
										

								</div>
							




						</form>


					</div>
				</div>

			


	</center>





		</c:if>
	
		<c:if test="${sessionID!=null}">
			<center>
			<br />

			<h1 class="reply-title"><%=session.getAttribute("sessionID") %>님이
				방문하셨습니다.
			</h1>
			
			
					
					
			<div class="col-12 text-center wow fadeInUp" data-wow-delay="100ms" style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
                                  <input type="button" value="로그아웃"
					onClick="location.href='<%=request.getContextPath() %>/member/logout'" value="로그인" class="btn roberto-btn mt-15"  >
                                    <input  type="button" value="회원정보수정"
					onClick="location.href='<%=request.getContextPath() %>/member/update?id=${sessionID}'"  class="btn roberto-btn mt-15"  >
                                    <input type="button" value="회원탈퇴"
					onClick="location.href='<%=request.getContextPath() %>/member/delete'"  class="btn roberto-btn mt-15">
                                </div>


</center>
		</c:if>

	<br>
	<br>


</body>
</html>