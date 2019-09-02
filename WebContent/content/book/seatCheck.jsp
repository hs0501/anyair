<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
<c:forEach var="book" items="${bookList }">
function SetSelectBox(){
	if(${book.baggage}==0){
		$("#baggage").val("0").attr("selected","selected");
	}else if(${book.baggage}==1){
		$("#baggage").val("1").attr("selected","selected");
	}else if(${book.baggage}==2){
		$("#baggage").val("2").attr("selected","selected");
	}
}

function SetSelectBox2(){
		if(${book.meal}=="any"){
			$("#meal").val("any").prop("selected",true);
		}else if(${book.meal}=="beef"){
			$("#meal").val("beef").prop("selected",true);
		}else if(${book.meal}=="chicken"){
			$("#meal").val("chicken").prop("selected",true);
		}else if(${book.meal}=="fish"){
			$("#meal").val("fish").prop("selected",true);
		}else if(${book.meal}=="veggie"){
			$("#meal").val("veggie").prop("selected",true);
		}
	}
	
function SetSelectBox3(){
		if(${book.adult_kid}=="adult"){
			$("#aud_kid").val("adult").prop("selected",true);
		}else if(${book.adult_kid}=="kid"){
			$("#aud_kid").val("kid").prop("selected",true);
		}
	}
</c:forEach>
</script>
</head>
<body>
	<form>
		<div style="border: 1px solid black; height: 500px;">
			<div
				style="border: 1px solid orange; width: 78%; float: left; margin-left: 50px; height: 450px;">
				1
				<table>
					<tr>
						<th>성</th>
						<th>이름</th>
						<th>여권번호</th>
						<th>수하물</th>
						<th>식사</th>
						<th>편명</th>
						<th>좌석</th>
						<th>가격</th>
					</tr>
					<c:forEach var="book" items="${bookList }">
						<tr>
							<td><input type="text" placeholder="${book.lastname }"
								name="lastname"></td>
							<td><input type="text" placeholder="${book.firstname }"
								name="firstname"></td>
							<td><input type="text" placeholder="${book.passport }"
								name="passNo"></td>
							<td><select id="baggage" name="baggage"
								onchange="SetSelectBox();">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
							</select></td>
							<td><select name="meal" id="meal"
								onchange="SetSelectBox2();">
									<option value="any">Any</option>
									<option value="beef">Beef</option>
									<option value="chicken">Chicken</option>
									<option value="fish">Fish</option>
									<option value="Veggie">Veggie</option>
							</select></td>
							<td><select name="aud_kid" id="aud_kid"
								onchange="SetSelectBox3();">
									<option value="adult">Adult</option>
									<option value="kid">Kid</option>
							</select></td>
							<td><input type="text" placeholder="편명" name="airCode"></td>
							<td><input type="text" placeholder="${book.seat_name }"></td>
							<td>가격</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div
				style="border: 1px solid blue; width: 15%; float: left; margin-left: 30px; height: 450px;">
				<table>
					<tr>
						<th>운임 요금</th>
						<td>100000</td>
					</tr>
					<tr>
						<th>유류 할증 요금</th>
						<td>100000</td>
					</tr>
					<tr>
						<th>세금</th>
						<td>100000</td>
					</tr>
					<tr>
						<th>총 운임 요금</th>
						<td>100000</td>
					</tr>
				</table>
			</div>
		</div>
		<div style="border: 1px solid red; height: 300px;">3 항공편 정보 출발
			날짜 항공편 정보 도착 날짜</div>
		<input type="submit" value="다음 >>">

	</form>
</body>
</html>