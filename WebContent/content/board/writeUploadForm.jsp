<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<html><head><title>게시판</title></head>




<form method="post" name="writeform" 
enctype="multipart/form-data"  action="writeUploadPro" >
<input type="hidden" name="num" value="${num}">
<input type="hidden" name="pageNum" value="${pageNum}">
<input type="hidden" name="ref" value="${ref}">
<input type="hidden" name="re_step" value="${re_step}">
<input type="hidden" name="re_level" value="${re_level}">
<input type="hidden" name="writer" value="${sessionID}">


<center>


<div class="single-widget-area">
                           
                   
<div class="roberto-contact-form-area section-padding-100">
        <div class="container" style="width: 50%;">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center wow fadeInUp" data-wow-delay="100ms" style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
                   
                        <h2>Writing</h2>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <!-- Form -->
                    <div class="roberto-contact-form">
                        <form method="post" name="writeform" 
enctype="multipart/form-data"  action="writeUploadPro" >
                            <div class="row">
                                <div class="col-12 col-lg-6 wow fadeInUp" data-wow-delay="100ms" style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
                                    <input type="text" size="40" maxlength="50" name="subject" class="form-control mb-30" placeholder="Subject"  required="required">
                                </div>
                                <div class="col-12 col-lg-6 wow fadeInUp" data-wow-delay="100ms" style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
                                    <input type="text" size="40" maxlength="30" name="email"  class="form-control mb-30" placeholder="Email"  required="required">
                                </div>
                                <div class="col-12 col-lg-6 wow fadeInUp" data-wow-delay="100ms" style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
                                    <input type="password" size="8" maxlength="12" name="passwd"  class="form-control mb-30" placeholder="Password"  required="required">
                                </div>
                                <div class="col-12 col-lg-6 wow fadeInUp" data-wow-delay="100ms" style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
                                    <input type="file" size="40" maxlength="30"   name="uploadfile"  name="email"  class="form-control mb-30" placeholder="File" >
                                </div>
                                <div class="col-12 wow fadeInUp" data-wow-delay="100ms" style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;"  required="required">
                                    <textarea name="content" rows="13" cols="40" class="form-control mb-30" placeholder="Contents"  required="required"></textarea>
                                </div>
                                
                                <div class="col-12 text-center wow fadeInUp" data-wow-delay="100ms" style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
                                    <input type="submit" value="글쓰기"  class="btn roberto-btn mt-15"  >
                                    <input type="button" class="btn roberto-btn mt-15" value="목록보기" OnClick="window.location='list?pageNum=${pageNum}'">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

     </div>



</center>
</body>
</html>      
