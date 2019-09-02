<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>
<div class="listall" style="height:600px;">
<div class="listdiv" style="margin-left:200px;">
<form action="formlist"  method="post">
<table class = "admem" border=3px solid black; style="text-align:center" width="1500px" >
<tr>
<td style="text-align:center">&nbsp;번호</td>
<td style="text-align:center">&nbsp;아이디</td>
<td style="text-align:center">&nbsp;패스워드</td>
<td style="text-align:center">&nbsp;이름</td>
<td style="text-align:center">&nbsp;닉네임</td>
<td style="text-align:center">&nbsp;주민번호1</td>
<td style="text-align:center">&nbsp;주민번호2</td>
<td style="text-align:center">&nbsp;이메일</td>
<td style="text-align:center">&nbsp;핸드폰번호</td>
<td colspan="2" style="text-align:center">관리자</td>
</tr>

<c:forEach var="member" items="${memberList }">
<tr>
<td style="text-align:center">${member.num}&nbsp;</td>
<td style="text-align:center">${member.id}&nbsp;</td>
<td style="text-align:center">${member.password1}&nbsp;</td>
<td style="text-align:center">${member.name}&nbsp;</td>
<td style="text-align:center">${member.nickname}&nbsp;</td>
<td style="text-align:center">${member.jumin1}&nbsp;</td>
<td style="text-align:center">${member.jumin2}&nbsp;</td>
<td style="text-align:center">${member.email}&nbsp;</td>
<td style="text-align:center">${member.tel}&nbsp;</td>
<td><button class="delete" type="submit" onclick="location.href=<%=request.getContextPath()%>/anyair/adminDelete?id=${member.id}">삭제</button></td>
</tr>
</c:forEach>
</table>
</form>
</div>
<br>
<div class="search1" style="margin-left:1500px;">
<table style="margin-right: auto;">
<tr>
<td><select class="form-control" style="width:100px">
	<option>아이디</option>
	<option>이름</option>
</select>
<td><input type="text" class="form-control1" style="width:100px; height:40px;">
<button class="search" type="button" style="width:50px; height:40px;">검색</button>
</td>
</tr>	
</table>
</div>
</div>
</body>
</html>