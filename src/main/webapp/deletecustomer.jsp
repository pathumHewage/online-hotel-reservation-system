<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	String roomid = request.getParameter("roomid");
	String name = request.getParameter("roomname");
	String type = request.getParameter("type");
	String roomnumber = request.getParameter("roomnumber");
	String pets= request.getParameter("pets");
	String serve = request.getParameter("serve");
	String menu = request.getParameter("menu");
	String gym = request.getParameter("gymFacility");
	String swimming = request.getParameter("Pswimmingpol");
	String surrounding = request.getParameter("sorrounding");
	String rec = request.getParameter("recommedation");
	String dseason = request.getParameter("discountSeason");
	String guide= request.getParameter("guide");
	String vehicle = request.getParameter("vehicleFacility");
	%>

	<h1>Customer Account Delete</h1>

	<form action="delete" method="post">
	<table>
			<tr>
			<td>Room ID</td>
			<td><input type="text" name="roomid" value="<%= roomid %>" readonly></td>
		</tr>
		<tr>
			<td>Room Number</td>
			<td><input type="text" name="name" value="<%= name %>"readonly></td>
		</tr>
		<tr>
		<td>Room Type</td>
		<td><input type="text" name="type" value="<%= type%>"readonly></td>
	</tr>
	<tr>
		<td>Room Number</td>
		<td><input type="text" name="roomnumber" value="<%= roomnumber %>"readonly></td>
	</tr>
	<tr>
		<td>Pets</td>
		<td><input type="text" name="pets" value="<%= pets%>"readonly></td>
	</tr>
	<tr>
		<td>Serve</td>
		<td><input type="text" name="serve" value="<%= serve %>"readonly></td>
	</tr>
		<tr>
			<td>Menu</td>
			<td><input type="text" name="menu" value="<%= menu %>" readonly></td>
		</tr>
		<tr>
			<td>Gym Facility</td>
			<td><input type="text" name="gym" value="<%= gym %>"readonly></td>
		</tr>
		<tr>
		<td>Swimming pool</td>
		<td><input type="text" name="Pswimmingpol" value="<%= swimming %>"readonly></td>
	</tr>
	<tr>
		<td>Surrounding</td>
		<td><input type="text" name="sur" value="<%= surrounding %>"readonly></td>
	</tr>
	<tr>
		<td>Recommendation</td>
		<td><input type="text" name="rec" value="<%= rec %>"readonly></td>
	</tr>
	<tr>
		<td>Discount Season</td>
		<td><input type="text" name="dsea" value="<%= dseason%>"readonly></td>
	</tr>
	<tr>
		<td>Guide </td>
		<td><input type="text" name="guide" value="<%= guide %>"readonly></td>
	</tr>	
	<tr>
		<td>Vehicle Facility</td>
		<td><input type="text" name="vfac" value="<%= vehicle %>"readonly></td>
	</tr>	
	</table>
	
	<br>
	
	<input type="submit" name="submit" value="Delete My Account">
	</form>


</body>
</html>