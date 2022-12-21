<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- nvo32 -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

<link
	href="/csc-group-asia-web/bootstrap/sb/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="/csc-group-asia-web/bootstrap/sb/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- End nvo32 -->
<title>Insert title here</title>
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

	<form action="<%=request.getContextPath()%>/newpolicy" method="post" >   
		<div class="container" style="margin-top: 0px; display: block;">
			<div id="page-header" class="row">
				<h1
					style="margin: 25px 15px 15px 15px !important; font-family: 'Oswald', sans-serif !important; font-weight: 500 !important; font-size: 24px !important; border-bottom: 1px solid #eee !important; border-bottom-style: double !important; margin-bottom: 10px""="">Policy
					Header, New Business</h1>

			</div>
			<div class="panel panel-default" style="height: auto;">

				<div class="panel-body">
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label>
									<div class="label_txt" style="position: relative; bottom: 3px;">Policy</div>
								</label>
								<table>
									<tbody>
										<tr>
											<td>
												<%
													String gpoltyp = (String) session.getAttribute("gpoltyp");
													String effdateDisp = (String) session.getAttribute("effdateDisp");
												%>

												<!-- <div>
													<input title="36022773"
														style="overflow: hidden; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 80px;"
														id="polnum_div" name="polnum_div"
														class="form-control ellipsis" value="36022773" disabled>
												</div> -->
												<div class="form-group">
												<div title="36022773" 
													style="overflow: hidden; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 80px;"
													name="polnum_div" value="36022773"
													class="form-control ellipsis">36022773</div>
													</div>
											</td>
											<td style="padding-left: 1px;">

												<div title="END"
													style="margin-left: 1px; overflow: hidden; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 40px;"
													id="cnttype_div" class="form-control ellipsis">MTP</div>

											</td>
											<td style="padding-left: 1px;">

												<div title="Group Endowment               "
													style="margin-left: 1px; overflow: hidden; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 155px; max-width: 140px;"
													id="ctypdesc_div" name="ctypdesc_div" value="<%=gpoltyp%>"
													class="form-control ellipsis"><%=gpoltyp%></div>


											</td>
										</tr>
									</tbody>
								</table>

							</div>
						</div>
						<!-- IBPGROUP-6061 Start -->
						<div class="col-md-4">
							<div class="form-group">
								<label><div class="label_txt"
										style="position: relative; bottom: 3px;">Policy Status</div></label>
								<table>
									<tbody>
										<tr>
											<td>
												<div title="PN"
													style="overflow: hidden; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 40px;"
													id="statcode_div" name="statcode_div" value="PN"
													class="form-control ellipsis">PN</div>
											</td>
											<td>
												<div
													style="margin-left: 1px; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 215px; max-width: 215px;"
													id="statdets_div" class="form-control ellipsis" value="PN"
													title="Pending New business          ">Pending New
													business</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- IBPGROUP-6061 End -->

						<div class="col-md-2">
							<div class="form-group">
								<label><div class="label_txt"
										style="position: relative; bottom: 3px;">Effective Date</div></label>
								<div class="input-group" style="min-width: 100px">

									<div
										style="overflow: hidden; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 80px;"
										id="effdateDisp_div" name="effdateDisp_div"
										class="form-control ellipsis" value="<%=effdateDisp%>"><%=effdateDisp%></div>
								</div>

							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4">
							<!-- <div class="form-group">   -->
							<label><div class="label_txt"
									style="position: relative; bottom: 3px;">Policy Owner</div></label>


							<table>
								<tbody>
									<tr style="width: 110px;">
										<td class="form-group">

											<div class="input-group" style="width: 150px;">
												<input name="ownersel" id="ownersel" type="text" size="10"
													style="padding-top: 3px; overflow: hidden; white-space: nowrap; position: relative; top: 0; left: 0; text-align: left;"
													value="" maxlength="10" onfocus="doFocus(this)"
													class="form-control"> <span class="input-group-btn">
													<button class="btn btn-info"
														style="font-size: 19px; border-bottom-width: 0px !important;"
														type="button"
														onclick="doFocus(document.getElementById('ownersel')); doAction('PFKEY04')">
														<i class="glyphicon glyphicon-search" aria-hidden="true"></i>
													</button>
												</span>
											</div>
										</td>
										<td style="padding-left: 2px;">
											<div
												style="margin-left: -1px; overflow: hidden; background-color: rgb(238, 238, 238); width: 122px;"
												id="ownername_div" class="form-control ellipsis"
												onhelp="return fieldHelp(&quot;ownername&quot;)"
												title="                                               ">
											</div>
										</td>
									</tr>
								</tbody>
							</table>


						</div>

					</div>


					<div class="row">
						<div class="col-md-4">
							<div class="form-group" style="padding-top: 4px;">
								<label><div class="label_txt"
										style="position: relative; bottom: 3px;">Original
										Commencement Date</div></label>


								<table>
									<tbody>
										<tr>
											<td>


												<div>
													<div title="01/03/2022"
														style="overflow: hidden; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 80px;"
														id="occdateDisp_div" class="bold form-control ellipsis"
														onhelp="return fieldHelp(&quot;occdateDisp&quot;)"><%=effdateDisp%></div>
												</div>



											</td>
										</tr>
									</tbody>
								</table>
							</div>

						</div>


						<div class="col-md-4">
							<div class="form-group">
								<label><div class="label_txt"
										style="position: relative; bottom: 3px;">First Billing
										Date</div> </label>


								<div class="input-group date form_date col-md-12"
									data-date="12/11/2022" data-link-field="btdateDisp"
									style="width: 150px;">
									<input name="btdateDisp" id="btdateDisp" type="text" size="10"
										style="overflow: hidden; white-space: nowrap; position: relative; top: 0; left: 0; text-align: left;"
										value="" maxlength="10" onfocus="doFocus(this)"
										onhelp="return fieldHelp(&quot;btdateDisp&quot;)"
										onkeyup="return checkMaxLength(this)"
										class="input_cell bold form-control"> <span
										class="input-group-addon"> <span
										class="glyphicon glyphicon-calendar"></span>
									</span>
								</div>


							</div>
						</div>

					</div>
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label><div class="label_txt"
										style="position: relative; bottom: 3px;">Insured From</div></label>


								<div>
									<div title="01/03/2022"
										style="overflow: hidden; background-color: rgb(238, 238, 238); color: rgb(153, 153, 153); font-weight: bold; width: 80px;"
										id="ccdateDisp_div" class="bold form-control ellipsis"
										onhelp="return fieldHelp(&quot;ccdateDisp&quot;)"><%=effdateDisp%></div>
								</div>

							</div>
						</div>

						<!-- <div class="col-md-2"></div>   -->

						<div class="col-md-4">
							<div class="form-group">
								<label>Insured to</label>

								<div class="input-group date form_date col-md-12"
									data-date="12/11/2022" data-link-field="crdateDisp"
									style="width: 150px;">
									<input name="insuredTo" id="insuredTo" type="text" size="10"
										style="overflow: hidden; white-space: nowrap; position: relative; top: 0; left: 0; text-align: left;"
										value="" maxlength="10" class="input_cell bold form-control">
									<span class="input-group-addon"> <span
										class="glyphicon glyphicon-calendar"></span>
									</span>
								</div>

							</div>
						</div>
					</div>


					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label><div class="label_txt"
										style="position: relative; bottom: 3px;">Engine No</div></label>
								<div class="input-group">
									<input name="EngineNo" id="EngineNo" type="text" size="3"
										style="position: relative; top: 0; left: 0; text-align: right;"
										value="" maxlength="9" decimal="0"
										class="input_cell bold form-control">
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label><div class="label_txt"
										style="position: relative; bottom: 3px;">Chassis No</div></label>
								<div class="input-group">
									<input name="ChassisNo" id="ChassisNo" type="text" size="3"
										style="position: relative; top: 0; left: 0; text-align: right;"
										value="" maxlength="9" decimal="0"
										class="input_cell bold form-control">
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label><div class="label_txt"
										style="position: relative; bottom: 3px;">Vehicle
										Registration No</div></label>
								<div class="input-group">
									<input name="RegistrationNo" id="RegistrationNo" type="text"
										size="3"
										style="position: relative; top: 0; left: 0; text-align: right;"
										value="" maxlength="9" onfocus="doFocus(this)" decimal="0"
										class="input_cell bold form-control">
								</div>
							</div>
						</div>
					</div>

					<!-- IBPGROUP-1146 ends -->


					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label>
									<div class="label_txt" style="position: relative; bottom: 3px;">Billing
										Currency</div>
								</label>
								<div class="input-group">

									<!-- IGroup-1393 Begin -->
									<select id="cntcurr" name="cntcurr" type="list"
										class="bold_cell form-control">
										<option value="" title="---------Select---------" selected="">---------Select---------</option>
										<option value="***" title="Default Ledger Currency       ">***--Default
											Ledger Currency</option>
										<option value="JPY" title="Japanese Yen                  ">JPY--Japanese
											Yen</option>
										<option value="NTD" title="NEW TAIWAN DOLLARS            ">NTD--NEW
											TAIWAN DOLLARS</option>
										<option value="SGD" title="Singapore Dollar              "
											selected="">SGD--Singapore Dollar</option>
										<option value="USD" title="US Dollars                    ">USD--US
											Dollars</option>
										<option value="VND" title="VND                           ">VND--VND
										</option>
									</select>
								</div>
							</div>
						</div>
					</div>

					<!-- IGROUP-3137 starts-->
					<div class="row">
						<div class="col-md-4">
							<!-- IGROUP-4394 end -->
							<div class="form-group">
								<label>
									<div class="label_txt" style="position: relative; bottom: 3px;">Sum
										Insured</div>
								</label>
								<div class="input-group">
									<input name="SumInsured" id="SumInsured" type="text" size="20"
										style="width: 100px; margin-left: 0px; overflow: hidden; white-space: nowrap; position: relative; top: 0; left: 0; text-align: left;"
										value="" maxlength="47" onfocus="doFocus(this)"
										class="form-control">

								</div>
							</div>
						</div>


						<div class="col-md-4">
							<!-- IGROUP-4394 end -->
							<div class="form-group">
								<label>
									<div class="label_txt" style="position: relative; bottom: 3px;">Annual
										Premium</div>
								</label>
								<div class="input-group">
									<input name="AnnualPremium" id="AnnualPremium" type="text"
										size="20"
										style="width: 100px; margin-left: 0px; overflow: hidden; white-space: nowrap; position: relative; top: 0; left: 0; text-align: left;"
										value="" maxlength="47" class="form-control">

								</div>
							</div>
						</div>

					</div>
					<div class="row">
						<div class="col-md-4">
							<!-- IGROUP-4394 end -->
							<div class="form-group">
								<label>
									<div class="label_txt" style="position: relative; bottom: 3px;">Rate</div>
								</label>
								<div class="input-group">
									<input name="Rate" id="Rate" type="text" size="20"
										style="width: 100px; margin-left: 0px; overflow: hidden; white-space: nowrap; position: relative; top: 0; left: 0; text-align: left;"
										value="" maxlength="47" class="form-control">

								</div>
							</div>
						</div>
						<div class="col-md-4">
							<!-- IGROUP-4394 end -->
							<div class="form-group">
								<label>
									<div class="label_txt" style="position: relative; bottom: 3px;">Posted
										Premium</div>
								</label>
								<div class="input-group">
									<input name="PostedPremium" id="PostedPremium" type="text"
										size="20"
										style="width: 100px; margin-left: 0px; overflow: hidden; white-space: nowrap; position: relative; top: 0; left: 0; text-align: left;"
										value="" maxlength="47" class="form-control">

								</div>
							</div>
						</div>
					</div>

					<!-- IGROUP-3137 ends-->
				</div>

				<input type="hidden" name="action_key" value="PFKEY0">
				<!-- IGROUP-3626 -->

				<!-- boostrap - add style -->
				<input class="invisibleSubmit" type="SUBMIT" name="lastResort"
					value="Enter" style="visibility: hidden; display: none;"
					onclick="if (document.activeElement.name != 'lastResort') {return false;}"
					onfocus="selectFirstField()"
					onmousedown="selectCurrentField();return false"
					onselectstart="selectFirstField()" tabindex="32767"> <input
					type="hidden" id="businessDate" value="12/11/2022"> <input
					type="hidden" id="subfile_paging" value="1">
				<!-- IGROUP-5505 -->
				<div id="navigateButton" class="text-right"
					style="float: right !important; display: block;">


					<button id="exitbutton" style="margin-right: 2px !important;"
						type="button" class="btn btn-danger btn-sm"
						onclick="doAction('PFKEY03');">Exit</button>
					<button id="refreshbutton" type="button" class="btn btn-sm"
						style="color: #fff;; background-color: #5bc0de; border-color: #46b8da; margin-right: 2px !important;"
						onClick="refreshPage()">Refresh</button>
					<button id="continuebutton" style="margin-right: 2px !important;"
						type="submit" class="btn btn-success btn-sm">Continue</button>
					<script>
						function stringToDate(_date, _format, _delimiter) {
							var formatLowerCase = _format.toLowerCase();
							var formatItems = formatLowerCase.split(_delimiter);
							var dateItems = _date.split(_delimiter);
							var monthIndex = formatItems.indexOf("mm");
							var dayIndex = formatItems.indexOf("dd");
							var yearIndex = formatItems.indexOf("yyyy");
							var month = parseInt(dateItems[monthIndex]);
							month -= 1;
							var formatedDate = new Date(dateItems[yearIndex],
									month, dateItems[dayIndex]);
							return formatedDate;
						}

						function refreshPage() {
							var effdateDisp_div = document
									.getElementById("effdateDisp_div").innerHTML;
							var btdateDisp = document
									.getElementById("btdateDisp").value;
							var SumInsured = document
									.getElementById("SumInsured").value;
							var Rate = document.getElementById("Rate").value;

							var formatedDateEffdateDisp_div = stringToDate(
									effdateDisp_div, "dd/MM/yyyy", "/");
							var formatedDateBtdateDisp = stringToDate(
									btdateDisp, "dd/MM/yyyy", "/");

							var dayNo = (formatedDateBtdateDisp - formatedDateEffdateDisp_div) / 86400000;

							var AnnualPremium = SumInsured * (Rate / 100);
							var PostedPremium = AnnualPremium * (dayNo / 365);

							console.log(formatedDateBtdateDisp);
							console.log(formatedDateEffdateDisp_div);
							console.log(SumInsured);
							console.log(Rate);
							console.log(dayNo);
							console.log(AnnualPremium);
							console.log(PostedPremium);

							document.getElementById('insuredTo').value = btdateDisp;
							document.getElementById('AnnualPremium').value = AnnualPremium;
							document.getElementById('PostedPremium').value = PostedPremium;
						}
					</script>

				</div>
			</div>
		</div>
	</form>
</body>
</html>