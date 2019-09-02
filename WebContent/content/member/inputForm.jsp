<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script>
	function checkIt() {
		var userInput = eval("document.userInput");
		if(userInput.passwd.value != userInput.passwd2.value) {
			alert("비밀번호를 동일하게 입력하세요");
			return false;
		}
		if(!(userInput.jumin1.value.length==6)) {
			alert("주민등록번호 앞의 6자리를 정확하게 입력하세요");
			return false;
		}
		if(!(userInput.jumin2.value.length==7)) {
			alert("주민등록번호 뒤의 7자리를 정확하게 입력하세요");
			return false;
		}
	}
</script> -->
</head>
<body>
<br>
<br><center>

	
	
	
		<div class="container"  >
	
	<div class="leave-comments"    style="width:100%;">
                                    <h1 class="reply-title">회원가입</h1>
                                    <form class="reply-form" name="userInput" action="<%=request.getContextPath()%>/member/inputPro" method="post"	onSubmit="return checkIt()">
                                        <div class="row">
                                          
                                            <div class="form-group">
                                                <div class="col-md-12" >
                                                    <label class="control-label" for="textarea">아이디</label>
                                                    <INPUT type="text" name="id" size="15" maxlength="12"class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="control-label" for="name">비밀번호</label>
                                                    <span class="required">*</span>
                                                    <INPUT type="password" name="passwd" size="15" maxlength="12" class="form-control">
                                                </div>
                                            </div>
                                            
                                                                <div class="col-md-12">
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="control-label" for="name">비밀번호 확인</label>
                                                    <span class="required">*</span>
                                                    <input type="password" name="passwd2" size="10" required="required" class="form-control">
                                                </div>
                                            </div>
                                            
                                                                <div class="col-md-12">
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="control-label" for="name">이름</label>
                                                    <span class="required">*</span>
                                                    <input type="text" name="name" size="10" required="required" class="form-control">
                                                </div>
                                            </div>
                                            
                                                                <div class="col-md-12">
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="control-label" for="name">주민등록번호 앞자리</label>
                                                    <span class="required">*</span>
                                                    <input type="text" name="jumin1" size="6" required="required" class="form-control">
                                                </div>
                                            </div>
                                                                                                          <div class="col-md-12">
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="control-label" for="name">주민등록번호 뒷자리</label>
                                                    <span class="required">*</span>
                                                    <input type="text" name="jumin2" size="7" required="required" class="form-control">
                                                </div>
                                            </div>
                                                                                                          <div class="col-md-12">
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="control-label" for="name">E-MAIL</label>
                                                    <span class="required">*</span>
                                                    <input type="text" name="email" size="20" required="required" class="form-control">
                                                </div>
                                            </div>
                                            
                                                                                               <div class="col-md-12">
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="control-label" for="name">블로그</label>
                                                    <span class="required">*</span>
                                                    <input type="text" name="blog" size="30" required="required" class="form-control">
                                                </div>
                                            </div>
                                
                                            <div class="col-md-12">
                                            
                                                <div class="form-group" >
                                                    <input type="submit" class="btn btn-default" value="회원가입">
                                               		  <INPUT type=reset value="다시입력" class="btn btn-default">
                                               		    <input type="button" value="취소" onclick="javascript:window.location='<%=request.getContextPath()%>/member/login'" class="btn btn-default">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                
                               </div> 
	
	
	
	
	
	</center>
	<br><br>
</body>
</html>