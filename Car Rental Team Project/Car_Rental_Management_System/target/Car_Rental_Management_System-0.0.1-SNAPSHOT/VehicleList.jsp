
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle List</title>
</head>
<body>
	<%@include file="htmlTemplates/navigationBar.html"%>
	
	<div class="wrapper">
		<label for="orderBy" id="modifyTitle">Sort by:</label>
		<form method="get" action="list">
			<select name="orderBy" id="car">
				<option value="licPlate">License Plate</option>
				<option value="model">Model</option>
				<option value="insurance">Insurance</option>
				<option value="isAvailable">Is available</option>
				<option value="milleage">Milleage</option>
				<option value="price">Price</option>
			</select>
			<button type="submit" class="button">Sort</button>
		</form>

		<div class="table">

			<div class="row header">
				<div class="cell">License Plate</div>
				<div class="cell">Model</div>
				<div class="cell">Insurance</div>
				<div class="cell">Is Available</div>
				<div class="cell">Milleage</div>
				<div class="cell">Price</div>
			</div>
			<c:forEach var="vehicle" items="${listVehicle}">
				<div class="row">
					<div class="cell" data-title="licPlate">
						<c:out value="${vehicle.licPlate}" />
					</div>
					<div class="cell" data-title="Model">
						<c:out value="${vehicle.model}" />
					</div>
					<div class="cell" data-title="Insurance">
						<c:out value="${vehicle.insurance}" />
					</div>
					<div class="cell" data-title="Is Available">
						<c:out value="${vehicle.isAvailable}" />
					</div>
					<div class="cell" data-title="Milleage">
						<c:out value="${vehicle.milleage}" />
					</div>
					<div class="cell" data-title="Price">
						<c:out value="${vehicle.price}" />
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
<style><%@include file="css/style.css"%></style>
</html>