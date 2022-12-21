<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- nvo32 -->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/main.css"> --%>
	<link href="bootstrap/sb/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="bootstrap/sb/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
	<link href="bootstrap/sb/dist/css/sb-admin-2.css" rel="stylesheet">
	<link href="bootstrap/sb/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="bootstrap/integral/integral-admin.css" rel="stylesheet" type="text/css">
	
	<script language="javaScript" src="js/xmlReader.js"></script>
	<script src="bootstrap/sb/vendor/jquery/jquery.js"></script>
	
	<!-- sb admin begin -->
	<link href="/csc-group-asia-web/bootstrap/sb/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/csc-group-asia-web/bootstrap/sb/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
	<link href="/csc-group-asia-web/bootstrap/sb/dist/css/sb-admin-2.css" rel="stylesheet">
	<link href="/csc-group-asia-web/bootstrap/sb/vendor/morrisjs/morris.css" rel="stylesheet">
	<link href="/csc-group-asia-web/bootstrap/sb/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="/csc-group-asia-web/bootstrap/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
	<link href="/csc-group-asia-web/bootstrap/integral/integral-admin.css" rel="stylesheet" type="text/css">
	<!-- IGROUP-4208 -->
	<script src="/csc-group-asia-web/bootstrap/sb/vendor/jquery/jquery.min.js"></script>
	<script src="/csc-group-asia-web/bootstrap/sb/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="/csc-group-asia-web/bootstrap/sb/vendor/metisMenu/metisMenu.min.js"></script>
	<script src="/csc-group-asia-web/bootstrap/sb/dist/js/sb-admin-2.js"></script>
	<script src="/csc-group-asia-web/bootstrap/datetimepicker/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
	<script src="/csc-group-asia-web/bootstrap/integral/integral-admin.js"></script>
	<!-- IGROUP-4208 -->
	
	<!-- YY -->
	<link href="/csc-group-asia-web/bootstrap/sb/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/csc-group-asia-web/bootstrap/sb/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
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
							-
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
	<form action="<%=request.getContextPath()%>/clients" method="post">
		<!-- menu1 -->
		<div class="container" style="margin-top:-25px; display: block;">
			<h1>CLIENT SUBMENU</h1>
			<div class="panel panel-default">
				<div class="panel-heading"><img src="/csc-group-asia-web/screenFiles/eng/menu/Input_icon02.png" height="25" title="Input">Input</div>
					<div class="panel-body panel-subMenu">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Client Number</label>
									<div style="display: table; width: 110px;">
										<div class="input-group" style="width: 70px;">
											<input name="clntnum" id="clntnum" type="text" size="8" style="padding-top: 3px; overflow: hidden; white-space: nowrap; position: relative; top: 0px; left: 0px; text-align: left; min-width: 70px;" maxlength="8" tabindex="2">
										</div>
										<span class="input-group-btn">
											<button class="btn btn-info" type="button" tabindex="3">
												<i class="glyphicon glyphicon-search" aria-hidden="true"></i>
											</button>
										</span>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-md-offset-1">
								<div class="form-group">
									<label>(Exact ID Only)</label>
									<input name="secuityno" id="secuityno" type="text" size="24" style="padding-top:3px;overflow:hidden; white-space:nowrap; position: relative; top:0; left:0; text-align:left;" maxlength="24" tabindex="4">
								</div>
							</div>
						</div>
					</div>
			</div>
		</div>
		<!-- menu2 -->
		<div class="panel panel-default secondPanel" style="margin-left:25px; margin-right:25px; display: block;">
			<div class="panel-heading"><img src="/csc-group-asia-web/screenFiles/eng/menu/Action_icon02.png" height="25" title="Actions">Action</div>
			<div class="panel-body panel-subMenu">
				<div class="row row-subMenu">
					<div class="col-md-3">
						<label class="radio-inline"><b> <input type="RADIO" name="action" id="A" value="A" tabindex="5">Add Personal Client</b>
						</label>
					</div>
					
					<div class="col-md-3">
						<label class="radio-inline"><b> <input type="RADIO" name="action" id="C" value="C" tabindex="7">Modify Client</b>
						</label>
					</div>
					
					<div class="col-md-3">
						<label class="radio-inline"><b> <input type="RADIO" name="action" id="E" value="E" tabindex="8">Inquire on Client Details</b>
						</label>
					</div>
				</div>
			</div>
		</div>
		<div id="navigateButton" class="text-right" style="float: right !important; display: block;">
				<button style="margin-right: 2px !important;" type="submit"; value="Exit" class="btn btn-danger btn-sm" tabindex="15">Exit</button>
				<button type="button" class="btn btn-sm" style="color: #fff;;background-color: #5bc0de;border-color: #46b8da; margin-right: 2px !important;" tabindex="16">Refresh</button>
				<button style="margin-right: 2px !important;" type="submit" class="btn btn-success btn-sm" tabindex="17">Continue</button>
		</div>
	</form>
</body>
</html>