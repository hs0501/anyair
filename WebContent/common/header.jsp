<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <!-- Title -->
    <title>Roberto - Hotel &amp; Resort HTML Template</title>

    <!-- Favicon -->
    <link rel="icon" href="<%=request.getContextPath()%>/img/core-img/favicon.png">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/style.css">
    


</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- /Preloader -->

    <!-- Header Area Start -->
    <header class="header-area">
        <!-- Search Form -->
        <div class="search-form d-flex align-items-center">
            <div class="container">
                <form action="index.html" method="get">
                    <input type="search" name="search-form-input" id="searchFormInput" placeholder="Type your keyword ...">
                    <button type="submit"><i class="icon_search"></i></button>
                </form>
            </div>
        </div>

        <!-- Top Header Area Start -->
        <div class="top-header-area">
            <div class="container">
                <div class="row">

                    <div class="col-6">
                        <div class="top-header-content">
                            <a href="<%=request.getContextPath()%>/member/login"><i class="icon_phone"></i> <span>Login</span></a>
                            <a href="<%=request.getContextPath()%>/board/list?boardid=1"><i class="icon_mail"></i> <span>게시판</span></a>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="top-header-content">
                            <!-- Top Social Area -->
                            <div class="top-social-area ml-auto">
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-tripadvisor" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- Top Header Area End -->

        <!-- Main Header Start -->
        <div class="main-header-area">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Classy Menu -->
                    <nav class="classy-navbar justify-content-between" id="robertoNav">

                        <!-- Logo -->
                        <a class="nav-brand" href="index.html"><img src="<%=request.getContextPath()%>/img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">
                            <!-- Menu Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>
                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul id="nav">
                                    <li class="active"><a href="<%=request.getContextPath()%>/index.html">Home</a></li>
                                    <li><a href="<%=request.getContextPath()%>/content/room.jsp">Rooms</a></li>
                                    <li><a href="<%=request.getContextPath()%>/content/about.jsp">About Us</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="<%=request.getContextPath()%>/content/index.jsp">- Home</a></li>
                                            <li><a href="<%=request.getContextPath()%>/content/room.jsp">- Rooms</a></li>
                                            <li><a href="<%=request.getContextPath()%>/content/single-room.jsp">- Single Rooms</a></li>
                                            <li><a href="<%=request.getContextPath()%>/content/about.jsp">- About Us</a></li>
                                            <li><a href="<%=request.getContextPath()%>/content/blog.jsp">- Blog</a></li>
                                            <li><a href="<%=request.getContextPath()%>/content/single-blog.jsp">- Single Blog</a></li>
                                            <li><a href="<%=request.getContextPath()%>/content/contact.jsp">- Contact</a></li>
                                            <li><a href="#">- Dropdown</a>
                                                <ul class="dropdown">
                                                    <li><a href="#">- Dropdown Item</a></li>
                                                    <li><a href="#">- Dropdown Item</a></li>
                                                    <li><a href="#">- Dropdown Item</a></li>
                                                    <li><a href="#">- Dropdown Item</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="<%=request.getContextPath()%>/content/blog.jsp">News</a></li>
                                    <li><a href="<%=request.getContextPath()%>/content/contact.jsp">Contact</a></li>
                                </ul>

                                <!-- Search -->
                                <div class="search-btn ml-4">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </div>

                                <!-- Book Now -->
                                <div class="book-now-btn ml-3 ml-lg-5">
                                    <a href="#">Book Now <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->