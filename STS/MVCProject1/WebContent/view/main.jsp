<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">        
<%@ page session="false" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<head>
<title>Polisy Asia application</title>
<!-- IJTI-1359 Start -->
<meta name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<!-- IJTI-1359 End -->
<!-- <meta http-equiv="pragram" content="no-cache">
<meta http-equiv="cache-control" content="no-cache, must-revalidate">
<meta http-equiv="expires" content="0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- sb admin begin -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- sb admin end -->


<!--  sb admin
<LINK REL="StyleSheet" HREF="theme/<%=lan%>/QAStyle.jsp" TYPE="text/css">
<LINK REL="StyleSheet" HREF="theme/<%=lan%>/QAStyle.css" TYPE="text/css">
<LINK REL="StyleSheet" HREF="theme/<%=lan%>/tabpane.css" TYPE="text/css">
--> 
<!-- sb admin
<LINK REL="StyleSheet" HREF="theme/<%=lan%>/style.css" TYPE="text/css">-->
<!--  script language="javascript" src='<%//=ctx%>js/superTables.js'></script>--> <!-- ILIFE-1328 for the right imported src   --> 
<!-- Linking of SuperTable ends here -->
<!-- bootstrap YY <script language="javascript" src="js/menuG4f.js"></script> -->


<!-- sb admin begin -->
<link href="bootstrap/sb/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap/sb/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
<link href="bootstrap/sb/dist/css/sb-admin-2.css" rel="stylesheet">
<link href="bootstrap/sb/vendor/morrisjs/morris.css" rel="stylesheet">
<link href="bootstrap/sb/vendor/font-awesome/css/font-awesome.min.css"  rel="stylesheet" type="text/css">
<%-- <link href="bootstrap/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen"> --%>
<link href="bootstrap/datepicker/bootstrap-datepicker.min.css" rel="stylesheet" media="screen">
<link href="bootstrap/integral/integral-admin.css"  rel="stylesheet" type="text/css">
<link href="bootstrap/sb/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">
<link href="bootstrap/sb/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">
<script src='bootstrap/sb/vendor/jquery/jquery.js'></script>
<script src='bootstrap/sb/vendor/jquery/jquery.min.js'></script>
<script src='bootstrap/sb/vendor/bootstrap/js/bootstrap.min.js'></script>
<script src='bootstrap/sb/vendor/metisMenu/metisMenu.min.js'></script>
<script src='bootstrap/sb/dist/js/sb-admin-2.js'></script>
<%-- <script src="bootstrap/datetimepicker/bootstrap-datetimepicker.min.js" charset="UTF-8"></script> --%>
<script src="bootstrap/datepicker/bootstrap-datepicker.min.js" charset="UTF-8"></script>
<script src="bootstrap/integral/integral-admin.js"></script>
<script src="bootstrap/sb/vendor/datatables/js/dataTables.js"></script>
<script src="bootstrap/sb/vendor/datatables/js/dataTables.bootstrap.js"></script>
<script src="bootstrap/sb/vendor/datatables-responsive/dataTables.responsive.js"></script>


<!-- YY -->
<link href="bootstrap/sb/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!-- sb admin end -->


<!-- IGROUP-2853 start -->
<style>

 #navigateButton
 {
display:none;
}
 
.container
{
display:none;
}

.modalmsg {
    display: none; 
    position: absolute; 
    z-index: 1000;
    border: 1px solid #5085b5;
    left: 290px;
    top: 310px;
    width: 450px; 
    height: 110px; 
    overflow: auto;
    background-color: white;
}
.modalmsg-content {
    background-color: #fefefe;
    width: 443px;
    height: 80px;
}
/* IGROUP-3626 START*/
.confirmModal-content {
    background: white;
    position: absolute;
    left: 20%;
    top: 20%;
    width: 60%;
    height: 24%;
    border: 1px solid rgba(0, 0, 0, 0.3);
    border-radius: 6px;
    box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
    text-align: center;
    z-index: 1000;
    
}
#confirmModal{
	display: none;
	width: 96%; /* IGROUP-4208 */
    height: 100%;
    position: absolute;
    z-index: 1000;
}
.regular-checkbox {
	display: none;
}
.regular-checkbox + label {
	background-color: #fafafa;
	border: 1px solid #cacece;
	box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
	padding: 9px;
	border-radius: 3px;
	display: inline-block;
	position: relative;
}
.regular-checkbox + label:active, .regular-checkbox:checked + label:active {
	box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
}
.regular-checkbox:checked + label {
	background-color: #e9ecee;
	border: 1px solid #adb8c0;
	box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05), inset 15px 10px -12px rgba(255,255,255,0.1);
	color: #99a1a7;
}
.regular-checkbox:checked + label:after {
	content: '\2714';
	font-size: 14px;
	position: absolute;
	top: -10px;
	left: 3px;
	color: #99a1a7;
}
.big-checkbox + label {
	padding: 12px;
}
.big-checkbox:checked + label:after {
	font-size: 28px;
	left: 2px;
}
/*IGROUP-3988 START*/
#txtData, #chkData {
	display: none;
}
#divConfirmation {
	display: flex;
  	flex-flow: column wrap;
  	align-items: center;
}
/*IGROUP-3988 END*/
</style>
<!-- IGROUP-2853 end -->

</head>


<div id="mainareaDiv"> <!-- IGROUP-6065 -->
<div id="headerTopLink" style="top:2px;left:1px;right:1px;z-index:5;" class="header">
<!-- IGB-1078 Start -->
<input type = "hidden" name="sflheaderList" id="sflheaderList" > 
<input type = "hidden" name="sflVarList" id="sflVarList" >
<!-- IGB-1078 End -->
<!-- <table height="5px" width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td></td></tr></table> --><!-- Add it for new style by LiuFang(2010-7-20) -->
<!--IGroup-937 yzhong4 start-->
<!-- <div style="position:absolute; top:4px;float:none;" id="mainareaDiv" class="mainarea">
<div style="position:absolute; top:2px;height:27px;left:1px;right:1px;z-index:5;" class="header"> -->

<%-- <h1 id="screenTitleP" style="margin-left:15px;margin-top:5px;"><%=tit%></h1> --%>
<!-- changes related to Internationalization of hame page link -->
<!-- <div class="navigationlink" style="margin-top: 5px;"> -->
<!--IGroup-937 yzhong4 end-->
	<%-- //modified to remove chinese language code for the I18N of integral. --%>
<%--				<%if(av.getUserLanguage().toString().equalsIgnoreCase("ENG")){ %>--%>
				<%-- <a href="javascript:;" onClick="doAction('PFKEY02')"><%=resourceBundleHandler.gettingValueFromBundleForLabel("Session_Info")%>&nbsp;&nbsp;</a>|
		        <a href="javascript:;" onClick="doAction('PFKEY01')">&nbsp;&nbsp;<%=resourceBundleHandler.gettingValueFromBundleForLabel("Help")%>&nbsp;&nbsp;</a>|
		        <a href="javascript:;" onClick="doAction('PFKEY16')">&nbsp;&nbsp;<%=resourceBundleHandler.gettingValueFromBundleForLabel("Home")%>&nbsp;&nbsp;</a>|
		        <a href="javascript:;" onClick="kill('<%=imageFolder.toUpperCase()%>');return false;">&nbsp;&nbsp;<%=resourceBundleHandler.gettingValueFromBundleForLabel("Logout")%>&nbsp;&nbsp;</a> --%>
 <%--
				<%}else if(av.getUserLanguage().toString().equalsIgnoreCase("CHI")){ %>
				<a href="javascript:;" onClick="doAction('PFKEY02')">ä¼šè¯ ä¿¡æ ¯&nbsp;&nbsp;</a>|
                <a href="javascript:;" onClick="doAction('PFKEY01')">å¸®åŠ©&nbsp;&nbsp;</a>|
                <a href="javascript:;" onClick="doAction('PFKEY16')">é¦–é¡µ&nbsp;&nbsp;</a>|
                <a href="javascript:;" onClick="kill('<%=imageFolder%>');return false;">æ³¨é”€&nbsp;&nbsp;&nbsp;</a>
				<%} %>
--%>
</div>

<!-- changes related to Internationalization of images -->
<%-- <script language='javaScript'>
var imageFolder = '<%=imageFolder%>';
var moreBtnText_ENG = '<%=resourceBundleHandler.gettingValueFromBundle("moreBtnText")%>';
var addBtnText_ENG = '<%=resourceBundleHandler.gettingValueFromBundle("addBtnText")%>';
var removeBtnText_ENG = '<%=resourceBundleHandler.gettingValueFromBundle("removeBtnText")%>';
var rowNumText_ENG = '<%=resourceBundleHandler.gettingValueFromBundle("rowNumText")%>';
</script> --%>
<!--IGroup-937 yzhong4 start-->
<!-- Ticket IFSU-285 xmae remove the mainDiv style: width:100%; -->
<!-- <div id="mainDiv" name="mainDiv" class="mainscreen" style="float:none; position:fixed; "> -->
<!--IGroup-937 yzhong4 end-->
<%-- <%@ include file="commonScript1.jsp" %> --%>

<%-- <%DecimalFormat df = (DecimalFormat)DecimalFormat.getNumberInstance(av.getLocale());
DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
dfs = df.getDecimalFormatSymbols();
	<%
		String screenN2 = this.getClass().getSimpleName();
		if (screenN2.endsWith("_jsp")) {
			screenN2 = QPUtilities.removeTrailing(screenN2, "_jsp");
		} else {
  screenN2 = screenN2.substring(1);
		}
  screenN2 = QPUtilities.removeTrailing(screenN2, "Form");
 %> --%>
 
 <!-- IGROUP-2853 start -->

<div id="polaModal" class="modalmsg">
  <div class="modalmsg-content">
    <p id="errorMsg" style = "padding-top:16px;padding-left:35px"></p>
    <BR><BR>
    <input id="bttCloseModel" type="button" style="margin-left:170px;width:50px;height:20px;" value="OK" onclick="javascript:closeModelMsg();">
  </div>
</div>
<!-- IGROUP-2853 end -->
<!-- IGROUP-3626 START -->
<div id="confirmModal" class="modalmsgC" >
	<div class="confirmModal-content" id="confirmModal-content">
		<p id="confirmMsg" style = "padding-top:25px; margin-left: 0px !important;"> 	<!-- IBPGROUP-3555 -->
		</p>
		<br>
	  	<div id="divConfirmation">
	  		<!-- IGROUP-3988 START-->
	  		<input type="text" name="txtData" id="txtData" style="width: 60%; border-radius: 5px; height: 25px">
	  		<input type="checkbox" name="chkData" id="chkData" class="regular-checkbox big-checkbox">
	  		<!-- IGROUP-3988 END-->
	  		<br>
	  	</div>
	  	<br>
	  	<input id="btnOk" type="button" style="width:65px;height:25px; border-radius: 5px" 
			value="Yes" onclick="doConfirm('Yes');">
		<input id="btnCancel" type="button" style="margin-left:10%;width:65px;height:25px;border-radius: 5px" 
			value="No" onclick="doConfirm('No');">
	</div>
</div>
<!--<style>
	/* The Modal (background) */
.modal {
    display: none;
    position: fixed;
    z-index: 1000 !important; 
    padding-top: 0px;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%; 
    overflow: auto; 
    background-color: rgb(0,0,0); 
    background-color: rgba(0,0,0,0.4); 
}
/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 35%;
    float: right;
    position: absolute;
    margin-left:100px;
}
.close {
    color: #aaaaaa;
    float: right;
    font-size: 30px;
    font-weight: bold;
}
.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
</style>
<div id="myModal" class="modal">
  <div class="modal-content">
	 <span class="close" style="padding-left: 10px;"><input type="button" id="btnCancel" style="font-size: 15px;width: 60px;height:23px;" value="Cancel"/></span>
	 <span>&nbsp;&nbsp;</span>
	 <span class="close"><input type="button" id="btnOK" style="font-size: 15px;width: 30px;height:23px;" value="OK"/></span>
 </div>
</div> -->
<script language='javaScript'>

$(document).ready(function() { 
	 $('.container').css("display","block"); 
	 $('#navigateButton').css("display","block"); 
}); 

<%-- var mainDoc;
var exipreTime1;
$(document).ready(function() {
	mainDoc=parent.frames["frameMenu"];
	exipreTime1 = '<%=av.getInstance().getAppConfig().getAboutToExpire()%>';
	var exipreTime2 = '<%=request.getSession().getMaxInactiveInterval()%>';
	setTimeout(function(){ triggerTimeOut(); }, (exipreTime2-exipreTime1)*1000);
});
function triggerTimeOut(){
	var timeoutObject = setTimeout(function(){ triggerLogoutPage(); }, (exipreTime1)*1000);
	$('#headerTopLink').removeAttr("style")
	$('#headerTopLink').css({"position":"absolute"," top":"2px","height":"27px","left":"1px","right":"1px"});
	mainDoc.displayOverlay();
	var modal = document.getElementById('myModal');
	modal.style.display = "block";
	$( "#btnOK" ).click(function() {
			$.ajax({
	            url: "sessionWarning",
	            type: "post",
	            success: function(d) {
	            	clearTimeout(timeoutObject);
					var exipreTime1 = '<%=av.getInstance().getAppConfig().getAboutToExpire()%>';
		            var exipreTime2 = '<%=request.getSession().getMaxInactiveInterval()%>';
		            setTimeout(function(){ triggerTimeOut(); }, (exipreTime2-exipreTime1)*1000);
		            $('#headerTopLink').css({"position":"absolute"," top":"2px","height":"27px","left":"1px","right":"1px","z-index":"5"});
		            modal.style.display = "none";
		            mainDoc.removeOverlay();
	            }
	        });
	});
	$( "#btnCancel" ).click(function() {
		clearTimeout(timeoutObject);
		 triggerLogoutPage();
	});
}
function triggerLogoutPage(){
var killsession='logout?t=' + new Date();
parent.location.replace(killsession);
} --%>

</script>