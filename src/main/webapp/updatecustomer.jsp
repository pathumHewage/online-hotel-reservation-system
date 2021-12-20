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


	

	<form action="update" method="post">
	<table>
		<tr>
			<td>Room ID</td>
			<td><input type="text" name="roomid" value="<%= roomid %>" readonly></td>
		</tr>
		<tr>
			<td>Room Number</td>
			<td><input type="text" name="name" value="<%= name %>"></td>
		</tr>
		<tr>
		<td>Room Type</td>
		<td><input type="text" name="type" value="<%= type%>"></td>
	</tr>
	<tr>
		<td>Room Number</td>
		<td><input type="text" name="number" value="<%= roomnumber %>"></td>
	</tr>
	<tr>
		<td>Pets</td>
		<td><input type="text" name="pets" value="<%= pets%>"></td>
	</tr>
	<tr>
		<td>Serve</td>
		<td><input type="text" name="serve" value="<%= serve %>"></td>
	</tr>
		<tr>
			<td>Menu</td>
			<td><input type="text" name="menu" value="<%= menu %>" ></td>
		</tr>
		<tr>
			<td>Gym Facility</td>
			<td><input type="text" name="gym" value="<%= gym %>"></td>
		</tr>
		<tr>
		<td>Swimming pool</td>
		<td><input type="text" name="swpl" value="<%=swimming%>"></td>
	</tr>
	<tr>
		<td>Surrounding</td>
		<td><input type="text" name="sur" value="<%= surrounding %>"></td>
	</tr>
	<tr>
		<td>Recommendation</td>
		<td><input type="text" name="rec" value="<%= rec %>"></td>
	</tr>
	<tr>
		<td>Discount Season</td>
		<td><input type="text" name="dsea" value="<%= dseason%>"></td>
	</tr>
	<tr>
		<td>Guide Facility</td>
		<td><input type="text" name="guide" value="<%= guide %>"></td>
	</tr>	
	<tr>
		<td>Vehicle Facility</td>
		<td><input type="text" name="vfac" value="<%= vehicle %>"></td>
	</tr>			
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Data">
	</form>
	

</body>
</html>