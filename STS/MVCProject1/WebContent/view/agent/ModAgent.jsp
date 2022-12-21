<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- nvo32 -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/main.css"> --%>
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
									style="color: white;"></i></a></li> -
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
	<form action="<%=request.getContextPath()%>/ModAgent"
		method="post">
		<%--  --%>
		<div class="container" style="margin-top: 0px; display: block;">

			<div id="page-header" class="row">
				<h1
					style="margin: 25px 15px 15px 15px !important; font-family: 'Oswald', sans-serif !important; font-weight: 500 !important; font-size: 24px !important; border-bottom: 1px solid #eee !important; border-bottom-style: double !important; margin-bottom: 10px""="">Account
					Maintenance</h1>

			</div>

			<%
				String ClientNumber = (String) session.getAttribute("ClientNumber");
				String CompanyName = (String) session.getAttribute("CompanyName");
				String CompanyCode = (String) session.getAttribute("CompanyCode");
				String AccountName = (String) session.getAttribute("AccountName");
				String AccountType = (String) session.getAttribute("AccountType");
				String LicenseNumber = (String) session.getAttribute("LicenseNumber");
				String AgentCode = (String) session.getAttribute("AgentCode");
				String AccountStatus = (String) session.getAttribute("AccountStatus");
			%>
			<div class="panel panel-default" style="height: auto;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-4">

							<label>
								<div class="label_txt "
									style="position: relative; overflow-y: hidden; top: 0px; left: 0px; width: 48px; height: 16px;">Client</div>
							</label>

							<table>
								<tbody>
									<tr>
										<td>
											<div class="form-group">

												<div class="input-group" style="width: 130px;">
													<input name="clntsel" id="clntsel" type="text" size="10"
														style="padding-top: 3px; overflow: hidden; white-space: nowrap; position: relative; top: 0; left: 0; text-align: left; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 80px;"
														value="<%=AgentCode%>" maxlength="10" onfocus="doFocus(this)"
														class="form-control"
														disabled><span class="input-group-btn">
														<button class="btn btn-info" type="button" tabindex="3">
															<i class="glyphicon glyphicon-search" aria-hidden="true"></i>
														</button>
													</span>
												</div>

											</div>
										</td>

										<td style="width: 150px;">
											<div id="cltname_div" class="form-control ellipsis"
												onhelp="return fieldHelp(&quot;cltname&quot;)"
												style="width: 70px; background-color: rgb(238, 238, 238);"
												title="                                                                                                                        ">
											</div>
										</td>
									</tr>
								</tbody>
							</table>

						</div>

						<div class="col-md-4">
							<div class="form-group">
								<label>
									<div class="label_txt"
										style="position: relative; overflow-y: hidden; top: 0px; left: 0px; width: 128px; height: 16px;">Company
										Name</div>
								</label>
								<div class="input-group" style="width: 80px;">

									<div style="position: relative;">
										<input name="branch" id="branch" type="text" size="10"
											style="overflow: hidden; white-space: nowrap; position: relative; top: 0; left: 0; text-align: left;"
											value="<%=CompanyName%>" maxlength="10" class="input_cell bold form-control"
										>
									</div>


									<!-- </input> -->
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label>
									<div class="label_txt"
										style="position: relative; overflow-y: hidden; top: 0px; left: 0px; width: 112px; height: 16px;">Company
										Code</div>
								</label>


								<div class="input-group date form_date col-md-12"
									style="width: 150px;">
									<div style="position: relative;">
										<input name="branchCode" id="branchCode" type="text" size="10"
											style="overflow: hidden; white-space: nowrap; position: relative; top: 0; left: 0; text-align: left;"
											value="<%=CompanyCode%>" maxlength="10" class="input_cell bold form-control"
											>
									</div>
								</div>




							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label>
									<div class="label_txt"
										style="position: relative; overflow-y: hidden; top: 0px; left: 0px; width: 56px; height: 16px;">Account</div>
								</label>
								<table>
									<tbody>
										<tr>
											<td>
												<div id="agntnum_div" class="form-control ellipsis"
													style="margin-right: -3px; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 80px;"
													title="48078   " value="<%=ClientNumber%>">48078</div>
											</td>
											<td style="width: 100px;"><input name="agntname"
												id="agntname" type="text" size="30"
												style="margin-left: 1px; overflow: hidden; white-space: nowrap; position: relative; top: 0; left: 0; text-align: left; "
												value="<%=AccountName%>" maxlength="30" 
												class="form-control"
												tabindex="6"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group" style="width: 110px;">
								<label>
									<div class="label_txt"
										style="position: relative; overflow-y: hidden; top: 0px; left: 0px; width: 96px; height: 16px ;">Account Type</div>
								</label>



								<div style="position: relative;">
									<select name="dbtype" id="dbtype" value="" type="list"
										style="width: 195.0px; margin-right: -3px; "
										onhelp="return fieldHelp" class="form-control" tabindex="7"><option
											value="<%=AccountType%>" title="<%=AccountType%>"><%=AccountType%></option>
										</select>
								</div>

							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group" style="width: 110px;">
								<label>
									<div class="label_txt"
										style="position: relative; overflow-y: hidden; top: 0px; left: 0px; width: 96px; height: 16px;">Account
										Status</div>
								</label>



								<div style="position: relative;">
									<select name="dbstatus" id="dbstatus" value="" type="list"
										style="width: 195.0px; font-weight: bold; " onfocus="doFocus(this)"
										onhelp="return fieldHelp" class="form-control" tabindex="7"><option
											value="<%=AccountStatus%>" title="<%=AccountStatus%>"><%=AccountStatus%></option>
									</select>
								</div>
							</div>
						</div>


					</div>
					<!-- IFSU-2084 starts -->

					<div class="row">
						<div class="col-md-4">

							<div class="form-group language">
								<label>
									<div class="label_txt"
										style="position: relative; overflow-y: hidden; top: 1px; left: 0px; width: 64px; height: 16px;">License
										Number</div>
								</label>

								<div class="input-group" style="min-width: 130px;">
									<input name="License" id="License" type="text" size="15"
										style="overflow: hidden; white-space: nowrap; position: relative; top: 0; left: 0; text-align: left;"
										value="<%=LicenseNumber%>" maxlength="15" class="form-control" tabindex="11">
								</div>



							</div>
						</div>
						<div class="col-md-4">

							<div class="form-group language">

								<div class="input-group" style="min-width: 130px;">
									<label>Agent Name</label> <input name="agntnm" id="agntnm"
										type="text" size="50"
										style="overflow: hidden; white-space: nowrap; position: relative; top: 0; left: 0; text-align: left;"
										value="<%=AccountName%>"
										class="form-control" >
								</div>
							</div>
						</div>
					</div>

					<hr>

				</div>
			</div>
		</div>
		<div id="navigateButton" class="text-right"
			style="float: right !important; display: block;">



			<button id="exitbutton" name="exitbutton" style="margin-right: 2px !important;"
				type="submit" value="E" class="btn btn-danger btn-sm" tabindex="36">Exit</button>
			<button id="refreshbutton" type="button" class="btn btn-sm"
				style="color: #fff;; background-color: #5bc0de; border-color: #46b8da; margin-right: 2px !important;"
				tabindex="37">Refresh</button>
			<button id="continuebutton" name="continuebutton" style="margin-right: 2px !important;"
				type="submit" value="C" class="btn btn-success btn-sm">Continue</button>


		</div>
	</form>
</body>
</html>