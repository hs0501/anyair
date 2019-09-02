
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${check==1 }">

<meta http-equiv="refresh" content="0;url=<%=request.getContextPath()%>/member/login">

</c:if>
<c:if test="${check==0 }">

		<script>
		alert("비밀번호를 다시 입력해주세요.");
		history.go(-1);
		
		</script>
</c:if>


<c:if test="${check==-1 }">
		<script>
		alert("등록되지 않은 아이디 입니다.");
		history.go(-1);
		</script>
</c:if>
</body>
</html>