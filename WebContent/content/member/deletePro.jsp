
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${check == 1 }">
		
				<center>
		<div class="container"  >
	<br>
	<div class="leave-comments"    style="width:70%;">
                                    <h1 class="reply-title">회원탈퇴 처리가 되었습니다</h1>

                                
                               </div> 
                               </div>
                               <br>
                               <br>
                               </center>
</c:if> <c:if test="${check != 1 }">
		<script>
		alert("비밀번호를 다시 입력해주세요.");
		history.go(-1);
		</script>
</c:if>

</body>
</html>