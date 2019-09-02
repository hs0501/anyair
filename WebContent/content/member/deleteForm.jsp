<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function checkIt() {

	}
</script>
</head>
<body onload="begin()">
<center>
	

	<div class="container"  >
	
	<div class="leave-comments"    style="width:70%;">
                                    <h1 class="reply-title">회원 탈퇴</h1>
                                    <form class="reply-form" action="<%=request.getContextPath()%>/member/deletePro" method="post"	onSubmit="return checkIt()">
                                        <div class="row">
                                          	<input type="hidden" name="writer" value="${sessionId}">
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label class="control-label" for="textarea">아이디</label>
                                                    <input type="text" name="id" size="15" maxlength="12" value="${sessionID}" readonly="readonly"class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="control-label" for="name">비밀번호</label>
                                                    <span class="required">*</span>
                                                    <input type="password" name="passwd" size="15" maxlength="12" class="form-control">
                                                </div>
                                            </div>
                                            
                                            
                                
                                            <div class="col-md-12">
                                            
                                                <div class="form-group" >
                                                    <input type="submit" value="회원 탈퇴" class="btn btn-default">
                                               		    <input type="button" value="취소" 	onClick="javascript:window.location='<%=request.getContextPath()%>/member/login'" class="btn btn-default">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                
                               </div> 
	
	
	
	
	<br>
	
</center>
</body>
</html>