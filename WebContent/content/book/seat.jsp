<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<link rel="stylesheet" type="text/css" media="all"
	href='<%=request.getContextPath()%>/css/jquery_air.css' />
<!--[if IE]>
<link rel="stylesheet" type="text/css" media="all" href='css/ie_fixes.css' />
<![endif]-->

<title>jQuery Air</title>
</head>
<body>
	<c:set var="space" value=" " />
	<div id="container">
		<img src="<%=request.getContextPath()%>/img/logo.gif" alt="jQuery Air"
			id="logo" /> <span id="info"> <strong>Charter Flight</strong><br />
			Passenger Management
		</span>
		<ul id="airplane">
			<li id="master"><input type="checkbox" id="check_all" /> <label
				for="check_all"> All </label></li>
			<c:forEach var="seat" items="${seatList }" varStatus="status">
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '01' }">
					<li class="seat_01 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_01" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '02' }">
					<li class="seat_02 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_02" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '03' }">
					<li class="seat_03 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_03" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '04' }">
					<li class="seat_04 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_04" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '05' }">
					<li class="seat_05 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_05" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '06' }">
					<li class="seat_06 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_06" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '07' }">
					<li class="seat_07 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_07" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '08' }">
					<li class="seat_08 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_08" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '09' }">
					<li class="seat_09 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_09" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '10' }">
					<li class="seat_10 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_10" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '11' }">
					<li class="seat_11 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_11" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '12' }">
					<li class="seat_12 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_12" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '13' }">
					<li class="seat_13 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_13" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '14' }">
					<li class="seat_14 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_14" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '15' }">
					<li class="seat_15 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_15" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '16' }">
					<li class="seat_16 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_16" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '17' }">
					<li class="seat_17 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_17" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '18' }">
					<li class="seat_18 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_18" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '19' }">
					<li class="seat_19 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_19" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '20' }">
					<li class="seat_20 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_20" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '21' }">
					<li class="seat_21 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_21" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '22' }">
					<li class="seat_22 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_22" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '23' }">
					<li class="seat_23 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_23" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '24' }">
					<li class="seat_24 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_24" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
				<c:if test="${fn:substring(seat.seat_name,0,2) eq '25' }">
					<li class="seat_25 ${fn:substring(seat.seat_name,2,3) }"><a
						href="#row_25" title="${seat.seat_name }">${seat.seat_name }</a></li>
				</c:if>
			</c:forEach>

		</ul>
		<!-- end #airplane -->
		<ol id="tabs">
			<c:forEach var="i" begin="1" end="25">
				<c:if test="${i lt 10 }">
					<li><a href="#row_0${i }">0${i }</a></li>
				</c:if>
				<c:if test="${i ge 10 }">
					<li><a href="#row_${i }">${i }</a></li>
				</c:if>
			</c:forEach>
		</ol>
		<!-- end #tabs -->
		<form action="check" method="post">
			<table cellspacing="0" id="passenger_details">
				<thead>
					<tr>
						<th scope="col">Seat</th>
						<th scope="col">First name</th>
						<th scope="col">Last name</th>
						<th scope="col">Passport #</th>
						<th scope="col">Baggage</th>
						<th scope="col">Carry-ons</th>
						<th scope="col">Meal</th>
						<th scope="col">Adult/Kid</th>
					</tr>
				</thead>
				<c:forEach var="seat" items="${seatList }" varStatus="status">
					<c:if test="${seat.seat_name eq '01A' }">
						<tbody id="row_01">
					</c:if>
					<c:if test="${seat.seat_name eq '02A' }">
						<tbody id="row_02">
					</c:if>
					<c:if test="${seat.seat_name eq '03A' }">
						<tbody id="row_03">
					</c:if>
					<c:if test="${seat.seat_name eq '04A' }">
						<tbody id="row_04">
					</c:if>
					<c:if test="${seat.seat_name eq '05A' }">
						<tbody id="row_05">
					</c:if>
					<c:if test="${seat.seat_name eq '06A' }">
						<tbody id="row_06">
					</c:if>
					<c:if test="${seat.seat_name eq '07A' }">
						<tbody id="row_07">
					</c:if>
					<c:if test="${seat.seat_name eq '08A' }">
						<tbody id="row_08">
					</c:if>
					<c:if test="${seat.seat_name eq '09A' }">
						<tbody id="row_09">
					</c:if>
					<c:if test="${seat.seat_name eq '10A' }">
						<tbody id="row_10">
					</c:if>
					<c:if test="${seat.seat_name eq '11A' }">
						<tbody id="row_11">
					</c:if>
					<c:if test="${seat.seat_name eq '12A' }">
						<tbody id="row_12">
					</c:if>
					<c:if test="${seat.seat_name eq '13A' }">
						<tbody id="row_13">
					</c:if>
					<c:if test="${seat.seat_name eq '14A' }">
						<tbody id="row_14">
					</c:if>
					<c:if test="${seat.seat_name eq '15A' }">
						<tbody id="row_15">
					</c:if>
					<c:if test="${seat.seat_name eq '16A' }">
						<tbody id="row_16">
					</c:if>
					<c:if test="${seat.seat_name eq '17A' }">
						<tbody id="row_17">
					</c:if>
					<c:if test="${seat.seat_name eq '18A' }">
						<tbody id="row_18">
					</c:if>
					<c:if test="${seat.seat_name eq '19A' }">
						<tbody id="row_19">
					</c:if>
					<c:if test="${seat.seat_name eq '20A' }">
						<tbody id="row_20">
					</c:if>
					<c:if test="${seat.seat_name eq '21A' }">
						<tbody id="row_21">
					</c:if>
					<c:if test="${seat.seat_name eq '22A' }">
						<tbody id="row_22">
					</c:if>
					<c:if test="${seat.seat_name eq '23A' }">
						<tbody id="row_23">
					</c:if>
					<c:if test="${seat.seat_name eq '24A' }">
						<tbody id="row_24">
					</c:if>
					<c:if test="${seat.seat_name eq '25A' }">
						<tbody id="row_25">
					</c:if>
					<tr
						class="seat_${fn:substring(seat.seat_name,0,2) } ${fn:substring(seat.seat_name,2,3) }">
						<td><strong>${seat.seat_name }</strong><input type="hidden"
							name="seatname" value="${seat.seat_name }"></td>
						<td><label for="first_name_${seat.seat_name }"> First
								name </label> <input type="text" name="firstname"
							id="first_name_${seat.seat_name }" /></td>
						<td><label for="last_name_${seat.seat_name }"> Last
								name </label> <input type="text" name="lastname"
							id="last_name_${seat.seat_name }" /></td>
						<td><label for="passport_${seat.seat_name }">
								Passport # </label> <input type="text" name="passport"
							id="passport_${seat.seat_name }" /></td>
						<td><label for="baggage_${seat.seat_name }"> Baggage
						</label> <select name="baggage" id="baggage_${seat.seat_name }">
								<option value="0" selected="selected">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
						</select></td>
						<td><label for="carry-ons_${seat.seat_name }">
								Carry-ons </label> <select name="carry_ons"
							id="carry-ons_${seat.seat_name }">
								<option value="0" selected="selected">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
						</select></td>
						<td><label for="meal_${seat.seat_name }"> Meal </label> <select
							name="meal" id="meal_${seat.seat_name }">
								<option value="any" selected="selected">Any</option>
								<option value="beef">Beef</option>
								<option value="chicken">Chicken</option>
								<option value="fish">Fish</option>
								<option value="Veggie">Veggie</option>
						</select></td>
						<td><select name="aud_kid" id="aud_kid_${seat.seat_name }">
								<option value="adult">Adult</option>
								<option value="kid">Kid</option>
						</select></td>
					</tr>
					<c:if test="${status.count mod 6 eq 0 }">
						</tbody>
					</c:if>
				</c:forEach>
				<!-- end #row_25 -->
			</table>
			<!-- end #passenger_details -->
			<p>
				<input type="submit" value="Save" class="button" />
			</p>
		</form>
	</div>
	<!-- end #container -->
</body>
</html>