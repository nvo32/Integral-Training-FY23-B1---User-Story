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
<!-- nvo32 -->
<form name="form1" method="post" action="/csc-group-asia-web/process" target="_top" onsubmit="return suppressit();" onclick="selectSpecial()">
   <div class="row" style="border:0px;margin:0 0 0 0;background-color:#5f249f"><!-- IBPGROUP-2221 -->
    <!-- feedback version -->
    
    	<div class="col-md-1" style="width:50px !important;padding-left:15px;padding-right:0px;border:0px;top:3px;">
    		<span style="font-size:30px;cursor:pointer; color:#fff" id="openNav-btn" onmouseover="openNav()">☰</span>
    	</div>
    
       <div class="col-md-1" style="width:80px !important;padding-left:15px;padding-right:0px;border:0px;top:-2px;"><!-- IBPGROUP-2221 -->
	         <img src="/csc-group-asia-web/screenFiles/DXC_newlogo.png" width="55px" border="0"><!-- IBPGROUP-2221 -->
        </div>
         <div class="col-md-2" style="width: 140px!important;padding-left:0px;padding-right:0px;border:0px;top:5px;">
	         <div style="font-size:15px;font-weight: bold;color: white !important;">DXC Assure Policy</div>
	         <table style="font-size: 10px !important;font-weight: bold;width:91%;">
		         <tbody><tr>
		         	<td style="color: #ffffff !important;">1.0-SNAPSHOT </td>
		         	<td style="text-align: right; color: #fff !important;"></td>  <!-- S0017 -->
		         </tr>
	         </tbody></table>
        </div>
      
          <div class="col-md-3"></div>      
    <!-- feedback version -->
		<div class="col-md-6" id="topPanel">
			<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;margin-top: -2px !important;background-color: #5f249f;"><!-- IBPGROUP-2221 -->
			
			<ul class="nav navbar-top-links navbar-right" style="background-color: #5f249f;margin-top: 1px !important;"><!-- IBPGROUP-2221 -->
			 			
			
			<ul class="nav navbar-top-links navbar-right" style="background-color: #5f249f;margin-top: 1px !important;"><!-- IBPGROUP-2221 -->
				
				<!-- IGROUP-4864 Start --> 
				<!-- IGROUP-4864 End --> 
				<!--  IGB-2495 Start --> 
				<!--  IGB-2495 End -->
			
							
				<li><a href="Sisense URL not configured" target="" style="color: #fff;font-size:20px !important;" title="Sisense"><i class="fa fa-bar-chart" style="color:white;"></i></a></li>
				<li><a href="javascript:;" onclick="" style="color: #fff;font-size:20px !important;top:2px;" title="Product Stage"><i class="fa fa-briefcase" style="color:white;"></i></a></li> <!-- IGROUP-6101 -->
-				<!-- IGROUP-5651 end-->
				<li><a href="javascript:;" onclick="" style="color: #fff;font-size:20px !important;top:2px;" title="Home"><i class="fa fa-home" style="color:white;"></i></a></li>
				<li><a href="javascript:;" onclick="" style="color: #fff;font-size:20px !important;top:2px;" title="Session Info"><i class="fa fa-info-circle" style="color:white;"></i></a></li>
				<li><a href="javascript:;" onclick="" style="color: #fff;font-size:20px !important;top:2px; " title="Help"><i class="fa fa-question-circle" style="color:white;"></i></a></li>
				<li><a href="javascript:;" onclick="" style="color: #fff;font-size:20px !important;top:2px;" title="Logout"><i class="fa fa-sign-out" style="color:white;"></i></a></li>
					    
				<li class="userInfo" title="Login time :&nbsp;07/12/2022&nbsp;at&nbsp;10:15:36Business Date:12/11/2022">
				    <a href="#">               
				        <span class="glyphicon glyphicon-user" style="color:white;top:2px;"></span>
				         <span style="padding-left:10px;color:white;top:2px;">PBHARDAWA</span> <!-- IGROUP-4177 -->
				    </a>
				</li>
			</ul>
		</ul></nav>
		</div>
   </div>
   <!-- End nvo32 -->
   <br><br><br><br><br>
				<div class="panel1 panel-default1" style="height: auto;">
			    	<div class="panel-heading1">
			        	You are now logged in to
			         </div>
			    	 <div class="panel-body alignment ">     
						<div class="row text-center">
								<div class="form-group">
									<input type="hidden" id="language01" name="language01" value="E">	
								</div>
                                <div class="form-group" id="company">
                                	<label>Company</label>
                                	<select id="company01" name="company01" onchange="change(this);" class="form-control" tabindex="2">
                                		<option value="0">DXC System Company</option>
                                		<option value="1">DXC General Insurance</option>
                                		<option value="2">DXC Life</option>
                                		<option value="3">DXC Group</option>
                                		<option value="9">DXC FSU</option>
                                		<option value="7">Takaful Company</option></select>
                                </div>
                                <div class="form-group" id="branch">
									<label>Branch</label>
									<select id="branch01" name="branch01" class="form-control" tabindex="3">
										<option value="**">All Branches</option>
										<option value="02">CSC_qWQTMGpp</option>
										<option value="04">CSC_mmINeYkf</option>
										<option value="10">Branch 10</option>
										<option value="11">Jurong Branch 1</option>
										<option value="111">Jurong Branch 1</option>
										<option value="123421">A123</option>
										<option value="15">CSC_HpUyxOxf</option>
										<option value="16">CSC_piRBEVnZ</option>
										<option value="21">CSC_dkhxZXYM</option>
										<option value="41">CSC_IyTKcGbn</option>
										<option value="42">CSC_dauiTRpd</option>
										<option value="45">AVDHN</option>
										<option value="47">CSC_Integral</option>
										<option value="62">CSC_DAtcBoDU</option>
										<option value="66">CSC_ydtdfJLj</option>
										<option value="72">CSC_feYFZnkO</option>
										<option value="72">CSC_feYFZnkO</option>
										<option value="76">CSC_DnjZPtaA</option>
										<option value="84">CSC_sdlmfGch</option>
										<option value="91">CSC_FCYHTzAy</option>
										<option value="92">CSC_gPZsuBVj</option>
									</select>
                                </div>
                                 <button class="btn btn-md btn-success btn-block" style="margin-top: 15px;" tabindex="4">
                                 Apply</button>
						</div>
					</div> 
			</div> 	
</form>
</body>
<div><!-- class="sidearea" style=";" -->
	
        <div><!-- class="navbar-default sidebar" role="navigation" -->
                <div><!-- class="sidebar-nav navbar-collapse collapse" style=" position: absolute"> -->
                    <ul class="nav" id="side-menu" style="max-height: 441px; overflow-y: auto;">
	                    <li>
	                        <a href="#">
	                        	<img src="screenFiles/eng/menu/System Administration.png" style="width: 20px; margin-left: 2px">US001
	                    	</a>
	                    	<ul class="nav nav-second-level collapse">
	                    		<li>
	                    			<a href="/MVCProject1/clients">Clients</a>
	                    	</ul>
	                    </li>
	                    
	                     <li>
	                        <a href="#">
	                        	<img src="screenFiles/eng/menu/System Administration.png" style="width: 20px; margin-left: 2px">US002 Create Agent
	                    	</a>
	                    	<ul class="nav nav-second-level collapse">
	                    		<li>
	                    			<a href="/MVCProject1/createAgents">Create Agent</a>
	                    		</li>
	                    	</ul>
	                    </li>
	                    
	                    <li>
	                        <a href="#">
	                        	<img src="screenFiles/eng/menu/System Administration.png" style="width: 20px; margin-left: 2px">US002
	                    	</a>
	                    	<ul class="nav nav-second-level collapse">
	                    		<li>
	                    			<a href="/MVCProject1/agents">Create New Motor Policy</a>
	                    		</li>
	                    	</ul>
	                    </li>
	                    
	                     <li>
	                        <a href="#">
	                        	<img src="screenFiles/eng/menu/System Administration.png" style="width: 20px; margin-left: 2px">US003
	                    	</a>
	                    	<ul class="nav nav-second-level collapse">
	                    		<li>
	                    			<a href="/MVCProject1/uploadFile">Upload File</a>
	                    		</li>
	                    	</ul>
	                    </li>
	                   
                    </ul>
                </div>
            </div>
			
	<div class="panel panel-info" id="msg-panel" style="margin-bottom:0px;">
	    	<div class="panel-heading" style="font-weight: bolder; text-align: center;padding-right: 40px;">
	        	Messages
	         </div>
	
	    	<div class="panel-body">     
			<!-- IGROUP-5049 START -->
	    	
				<div class="row" style="padding-left: 15px !important;font-weight: bold;">	
					               (C) Copyright DXC.technology<br>
				</div>
			<!-- IGROUP-5049 END -->
			</div>
	</div>
			
					
</div>
</html>

