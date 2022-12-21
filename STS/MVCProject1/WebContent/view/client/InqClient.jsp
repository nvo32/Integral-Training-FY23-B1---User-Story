<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="bootstrap/sb/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="bootstrap/sb/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">
<link href="bootstrap/sb/dist/css/sb-admin-2.css" rel="stylesheet">
<link href="bootstrap/sb/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="bootstrap/integral/integral-admin.css" rel="stylesheet"
	type="text/css">

<script language="javaScript" src="js/xmlReader.js"></script>
<script src="bootstrap/sb/vendor/jquery/jquery.js"></script>

<!-- sb admin begin -->
<link
	href="/csc-group-asia-web/bootstrap/sb/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="/csc-group-asia-web/bootstrap/sb/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">
<link href="/csc-group-asia-web/bootstrap/sb/dist/css/sb-admin-2.css"
	rel="stylesheet">
<link href="/csc-group-asia-web/bootstrap/sb/vendor/morrisjs/morris.css"
	rel="stylesheet">
<link
	href="/csc-group-asia-web/bootstrap/sb/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="/csc-group-asia-web/bootstrap/datetimepicker/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">
<link href="/csc-group-asia-web/bootstrap/integral/integral-admin.css"
	rel="stylesheet" type="text/css">
<!-- IGROUP-4208 -->
<script
	src="/csc-group-asia-web/bootstrap/sb/vendor/jquery/jquery.min.js"></script>
<script
	src="/csc-group-asia-web/bootstrap/sb/vendor/bootstrap/js/bootstrap.min.js"></script>
<script
	src="/csc-group-asia-web/bootstrap/sb/vendor/metisMenu/metisMenu.min.js"></script>
<script src="/csc-group-asia-web/bootstrap/sb/dist/js/sb-admin-2.js"></script>
<script
	src="/csc-group-asia-web/bootstrap/datetimepicker/bootstrap-datetimepicker.min.js"
	charset="UTF-8"></script>
<script src="/csc-group-asia-web/bootstrap/integral/integral-admin.js"></script>
<!-- IGROUP-4208 -->

<!-- YY -->
<link
	href="/csc-group-asia-web/bootstrap/sb/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="/csc-group-asia-web/bootstrap/sb/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- sb admin end -->
<!-- End nvo32 -->
<title>DXC</title>
</head>
<body>
<form name="form1" method="post" action="/csc-group-asia-web/process"
		target="_top" onsubmit="return suppressit();"
		onclick="selectSpecial()">
		<div class="row"
			style="border: 0px; margin: 0 0 0 0; background-color: #5f249f">

			<div class="col-md-1"
				style="width: 50px !important; padding-left: 15px; padding-right: 0px; border: 0px; top: 3px;">
				<span style="font-size: 30px; cursor: pointer; color: #fff"
					id="openNav-btn" onmouseover="openNav()">☰</span>
			</div>

			<div class="col-md-1"
				style="width: 80px !important; padding-left: 15px; padding-right: 0px; border: 0px; top: -2px;">
				<!-- IBPGROUP-2221 -->
				<img src="/csc-group-asia-web/screenFiles/DXC_newlogo.png"
					width="55px" border="0">
				<!-- IBPGROUP-2221 -->
			</div>
			<div class="col-md-2"
				style="width: 140px !important; padding-left: 0px; padding-right: 0px; border: 0px; top: 5px;">
				<div
					style="font-size: 15px; font-weight: bold; color: white !important;">DXC
					Assure Policy</div>
				<table
					style="font-size: 10px !important; font-weight: bold; width: 91%;">
					<tbody>
						<tr>
							<td style="color: #ffffff !important;">1.0-SNAPSHOT</td>
							<td style="text-align: right; color: #fff !important;"></td>
							<!-- S0017 -->
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-md-3"></div>
			<!-- feedback version -->
			<div class="col-md-6" id="topPanel">
				<nav class="navbar navbar-default navbar-static-top"
					role="navigation"
					style="margin-bottom: 0; margin-top: -2px !important; background-color: #5f249f;">

					<ul class="nav navbar-top-links navbar-right"
						style="background-color: #5f249f; margin-top: 1px !important;">

						<ul class="nav navbar-top-links navbar-right"
							style="background-color: #5f249f; margin-top: 1px !important;">
							<li><a href="Sisense URL not configured" target=""
								style="color: #fff; font-size: 20px !important;" title="Sisense"><i
									class="fa fa-bar-chart" style="color: white;"></i></a></li>
							<li><a href="javascript:;" onclick=""
								style="color: #fff; font-size: 20px !important; top: 2px;"
								title="Product Stage"><i class="fa fa-briefcase"
									style="color: white;"></i></a></li>
							
							<li><a href="javascript:;" onclick=""
								style="color: #fff; font-size: 20px !important; top: 2px;"
								title="Home"><i class="fa fa-home" style="color: white;"></i></a></li>
							<li><a href="javascript:;" onclick=""
								style="color: #fff; font-size: 20px !important; top: 2px;"
								title="Session Info"><i class="fa fa-info-circle"
									style="color: white;"></i></a></li>
							<li><a href="javascript:;" onclick=""
								style="color: #fff; font-size: 20px !important; top: 2px;"
								title="Help"><i class="fa fa-question-circle"
									style="color: white;"></i></a></li>
							<li><a href="javascript:;" onclick=""
								style="color: #fff; font-size: 20px !important; top: 2px;"
								title="Logout"><i class="fa fa-sign-out"
									style="color: white;"></i></a></li>

							<li class="userInfo"
								title="Login time :&nbsp;07/12/2022&nbsp;at&nbsp;10:15:36Business Date:12/11/2022">
								<a href="#"> <span class="glyphicon glyphicon-user"
									style="color: white; top: 2px;"></span> <span
									style="padding-left: 10px; color: white; top: 2px;">PBHARDAWA</span>
							</a>
							</li>
						</ul>
					</ul>
				</nav>
			</div>
		</div>
	</form>
	<h1>CLIENT INQUIRY</h1>
	<form action="<%=request.getContextPath()%>/AddClient" method="post">
		<div class="panel panel-default" style="height: auto;">
			<div class="panel-body">
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label>Client Number</label>
							<%
							String clientnum = null;
							
							String clntnum = (String) session.getAttribute("clntnum");
							String firstname = (String) session.getAttribute("firstname");
							String lastname = (String) session.getAttribute("lastname");
							String gender = (String) session.getAttribute("gender");
							String birthday = (String) session.getAttribute("birthday");
							String idNum = (String) session.getAttribute("idNum");
							String address = (String) session.getAttribute("address");
							String marritalStatus = (String) session.getAttribute("marritalStatus");
							String country = (String) session.getAttribute("country");
							
							%>
							<div style="overflow: hidden; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 80px;"
								class="form-control ellipsis"><%=clntnum %></div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12"
						style="padding-bottom: 3px !important; padding-top: 3px !important;">
						<div class="form-group">
							<hr style="border-top: 2px solid #eee;">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label><div class="label_txt"
									style="position: relative; bottom: 0px; margin-left: 0px;">Date of Birth</div> </label>
							<table>
								<tbody>
									<tr>
										<td></td>
										<td>
											<div class="input-group date form_date col-md-12">
												<div style="overflow: hidden; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 80px;"
								class="form-control ellipsis"><%=birthday %></div>
												<span class="input-group-addon"> <span
													class="glyphicon glyphicon-calendar"></span>
												</span>
											</div>
										</td>
										<td></td>
									</tr>
								</tbody>
							</table>

							<!-- IGJL-15 Start -->
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label><div class="label_txt"
									style="position: relative; bottom: 0px; margin-left: 0px;">Country
									of Origin</div> </label>
							<div style="position: relative;">
								<select name="country" id="country" type="list"
									style="width: 200.0px;" class="form-control">
									<option><%=country%></option>
								</select>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label> Identity Number </label>
							<div style="width: 150px;">
								<div style="overflow: hidden; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 80px;"
								class="form-control ellipsis"><%=idNum %></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label>
								<div class="label_txt"
									style="position: relative; bottom: 0px; margin-left: 0px;">First name</div>
							</label> 
							<div style="overflow: hidden; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 80px;"
								class="form-control ellipsis"><%=firstname %></div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label>
								<div class="label_txt"
									style="position: relative; bottom: 0px; margin-left: 0px;">Marital
									Status</div>
							</label>
							<div style="position: relative;">
								<select name="martialStatus" id="martialStatus" type="list"
									style="width: 200.0px;" class="form-control">
									<option><%=marritalStatus%></option>
									
								</select>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label>
								<div class="label_txt"
									style="position: relative; bottom: 0px; margin-left: 0px;">Gender
								</div>
							</label>
							<div style="position: relative;">
								<select name="gender" id="gender" type="list"
									style="width: 200.0px;" class="form-control">
									<option><%=gender%></option>
								
								</select>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label><div class="label_txt"
									style="position: relative; bottom: 0px; margin-left: 0px;">Last name</div> </label> <div style="overflow: hidden; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 80px;"
								class="form-control ellipsis"><%=lastname %></div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label>Address</label>
							<div id="addr" style="width: 150px;">
								<table>
									<tbody>
										<tr>
											<td><div style="overflow: hidden; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 80px;"
								class="form-control ellipsis"><%=address %></div>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
				</div>
				<div class="row"></div>
				<div style="margin-left: 900px">
					<button style="margin-right: 2px !important;" type="submit"; value="Exit"
						class="btn btn-danger btn-sm">Exit</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>