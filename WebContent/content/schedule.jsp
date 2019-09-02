<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- Breadcrumb Area Start -->
    <div class="breadcrumb-area bg-img bg-overlay jarallax" style="background-image: url(<%=request.getContextPath()%>/img/bg-img/16.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcrumb-content text-center">
                        <h2 class="page-title">Our Room</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Room</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Area End -->

    <!-- Rooms Area Start -->
    <div class="roberto-rooms-area section-padding-100-0">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6">
                    <!-- Single Room Area -->
                    <form>
                    <c:forEach var="go" items="${goList}">
                    <input type="radio" name="go">
                    <div class="single-room-area d-flex align-items-center mb-50 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Room Thumbnail -->
                     
                        <!-- Room Content -->
                        <div class="room-content">
                            <h2>${dep_city} → ${go.arrival_city}</h2>
                            ${go_date}(${go.departure_day}) ${go.departure_time} ${go.air_code}
            
                            
                        </div>
                    </div>
					</c:forEach>
                </div>

                <div class="col-12 col-lg-6">
                    <!-- Hotel Reservation Area -->
                    <div class="hotel-reservation--area mb-100">
                       

                    <!-- Single Room Area -->
                    <c:forEach var="back" items="${backList}">
                    <input type="radio" name="back">
                    <div class="single-room-area d-flex align-items-center mb-50 wow fadeInUp" data-wow-delay="300ms">
                        <!-- Room Thumbnail -->
 
                        <!-- Room Content -->
                        <div class="room-content">
                            <h2>${back.departure_city} → ${dep_city}</h2>
                            ${back_date}(${back.departure_day})  ${back.departure_time} ${back.air_code}
    
                 
                        </div>
                    </div>
					</c:forEach>
					</form>

            
       
               
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Rooms Area End -->
