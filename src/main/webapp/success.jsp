<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Success</h1>


	
	<table>
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="roomid" value="${cus.roomid}"/>
	<c:set var="roomname" value="${cus.roomname}"/>
	<c:set var="type" value="${cus.type}"/>
	<c:set var="roomnumber" value="${cus.roomnumber}"/>
	<c:set var="pets" value="${cus.pets}"/>
	<c:set var="serve" value="${cus.serve}"/>
	<c:set var="menu" value="${cus.menu}"/>
	<c:set var="gymFacility" value="${cus.gymFacility}"/>
	<c:set var="Pswimmingpol" value="${cus.pswimmingpol}"/>
	<c:set var="sorrounding" value="${cus.sorrounding}"/>
	<c:set var="recommedation" value="${cus.recommedation}"/>
	<c:set var="discountSeason" value="${cus.discountSeason}"/>
	<c:set var="guide" value="${cus.guide}"/>
	<c:set var="vehicleFacility" value="${cus.vehicleFacility}"/>

	
	
	<tr>
		<td>Room ID</td>
		<td>${cus.roomid}</td>
	</tr>
	<tr>
		<td>Room Name</td>
		<td>${cus.roomname}</td>
	</tr>
	<tr>
		<td>Room Type</td>
		<td>${cus.type}</td>
	</tr>
	<tr>
		<td>Room number</td>
		<td>${cus.roomnumber}</td>
	</tr>
	<tr>
		<td>Pets</td>
		<td>${cus.pets}</td>
	</tr>
	<tr>
		<td>Serve</td>
		<td>${cus.serve}</td>
	</tr>
	<tr>
		<td>Menu</td>
		<td>${cus.menu}</td>
	</tr>
	<tr>
		<td>GYm Facility</td>
		<td>${cus.gymFacility}</td>
	</tr>
	<tr>
		<td>Private swimming pool</td>
		<td>${cus.pswimmingpol}</td>
	</tr>
	<tr>
		<td>Surrounding</td>
		<td>${cus.sorrounding}</td>
	</tr>
		<tr>
		<td>Recommendation</td>
		<td>${cus.recommedation}</td>
	</tr>
	<tr>
		<td>Discount Season</td>
		<td>${cus.discountSeason}</td>
	</tr>
	<tr>
		<td>Guide</td>
		<td>${cus.guide}</td>
	</tr>
	<tr>
		<td>Vehicle Facility</td>
		<td>${cus.vehicleFacility}</td>
	</tr>
	

	</c:forEach>
	</table>
	
		<c:url value="updatecustomer.jsp" var="cusupdate">
		
	<c:param name="roomid" value="${roomid}"/>
	<c:param name="roomname" value="${roomname}"/>
	<c:param name="type" value="${type}"/>
	<c:param name="roomnumber" value="${roomnumber}"/>
	<c:param name="pets" value="${pets}"/>
	<c:param name="serve" value="${serve}"/>
	<c:param name="menu" value="${menu}"/>
	<c:param name="gymFacility" value="${gymFacility}"/>
	<c:param name="Pswimmingpol" value="${pswimmingpol}"/>
	<c:param name="sorrounding" value="${sorrounding}"/>
	<c:param name="recommedation" value="${recommedation}"/>
	<c:param name="discountSeason" value="${discountSeason}"/>
	<c:param name="guide" value="${guide}"/>
	<c:param name="vehicleFacility" value="${vehicleFacility}"/>
	
	</c:url>
	
		<a href="customerinsert.jsp">
	<input type="button" name="create" value="create My Data">
	</a>
	
	
	<a href="${cusupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	<br>
	
	<c:url value="deletecustomer.jsp" var="cusdelete">
	
	<c:param name="roomid" value="${roomid}"/>
	<c:param name="roomname" value="${roomname}"/>
	<c:param name="type" value="${type}"/>
	<c:param name="roomnumber" value="${roomnumber}"/>
	<c:param name="pets" value="${pets}"/>
	<c:param name="serve" value="${serve}"/>
	<c:param name="menu" value="${menu}"/>
	<c:param name="gymFacility" value="${gymFacility}"/>
	<c:param name="Pswimmingpol" value="${pswimmingpol}"/>
	<c:param name="sorrounding" value="${sorrounding}"/>
	<c:param name="recommedation" value="${recommedation}"/>
	<c:param name="discountSeason" value="${discountSeason}"/>
	<c:param name="guide" value="${guide}"/>
	<c:param name="vehicleFacility" value="${vehicleFacility}"/>
	
	</c:url>
	
	<a href="${cusdelete}">
	<input type="button" name="update" value="Delete My Data">
	</a>

		

</body>
</html>