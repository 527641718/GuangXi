﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showReport_gdzcjx_bc.aspx.cs" Inherits="JlueTaxSystemGXGS.WSSBSL.reportJsp.showReport_gdzcjx_bc" %>

<!DOCTYPE html>










 
 
 

<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link type="text/css" href="/WSSBSL/css/report.css" rel="stylesheet"/>
<script type="text/javascript" src="/WSSBSL/easyUI/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="/WSSBSL/js/common/common.js"></script>
<script type="text/javascript" src="/WSSBSL/js/common/check.js"></script>
<script type="text/javascript" src="/WSSBSL/js/page/report/reportCheck.js"></script>
<script type="text/javascript" src="/WSSBSL/js/page/report/reportCheckOnClick.js"></script>
<script type="text/javascript" src="/WSSBSL/js/page/report/reportPopSelect.js"></script>
<script type="text/javascript" src="/WSSBSL/js/page/report/reportTdPop.js"></script>
<script type="text/javascript" src="/WSSBSL/js/page/report/reportDataCheck.js"></script>
<script type="text/javascript" src="/WSSBSL/js/page/report/showReport.js"></script>

<body topmargin=0 leftmargin=0 rightmargin=0 bottomMargin=0>

<input type="hidden" value="raq=/zzs2013Ybnsr/gdzcjx.raq;nsrsbh=450100399111430;sbzt=0;skssq=20171111;ssqq=2017-11-01;ssqz=2017-11-30;isTbBz=0" id="myParams" />
<iframe name="submitFrame" src="" style="display:none"></iframe> 
<table id="rpt" width="100%"><tr><td align="center">
		<script language=javascript src="/WSSBSL/Finput.js" charset="UTF-8">
</script>
<script language=javascript>
	var report1_validOnSubmit = true;
</script>
<div id="div_report1">
<script language=javascript src="/WSSBSL/Frqdialog.js" charset="UTF-8">
</script>
<script language=javascript>
	function report1_getCurrPage() {
		return 1;
	}
	function report1_getTotalPage() {
		return 1;
	}
	var report1_cachedId = "10_1_1_176_8080_12371";
</script>
<script language=javascript>
	function report1_saveAsExcel() {
		var address = "/WSSBSL/reportServlet?action=4&reportName=report1&isDialog=1&excelFormat=2003";
		rq_showPopWin( address, 300, 210, null );
	}
	function report1_saveAsExcel2( returnVal) {
		document.report1_saveAs_frame.location = "/WSSBSL/reportServlet?action=3&file=%2Fzzs2013Ybnsr%2Fgdzcjx.raq&columns=0&srcType=file&width=0&height=0&reportParamsId=15127084924383936112074&cachedId=10_1_1_176_8080_12371&t_i_m_e=1512708492672" + returnVal;
	}
</script>
<script language=javascript>
	function report1_saveAsPdf() {
		var address = "/WSSBSL/reportServlet?action=25&reportName=report1&isDialog=1";
		rq_showPopWin( address, 300, 200, null );
	}
	function report1_saveAsPdf2( returnVal ) {
		document.report1_saveAs_frame.location = "/WSSBSL/reportServlet?action=6&file=%2Fzzs2013Ybnsr%2Fgdzcjx.raq&columns=0&srcType=file&reportParamsId=15127084924383936112074&cachedId=10_1_1_176_8080_12371&t_i_m_e=1512708492672" + returnVal;
	}
</script>

<script language=javascript>
	function report1_saveAsWord() {
		document.report1_saveAs_frame.location = "/WSSBSL/reportServlet?action=7&file=%2Fzzs2013Ybnsr%2Fgdzcjx.raq&columns=0&srcType=file&reportParamsId=15127084924383936112074&cachedId=10_1_1_176_8080_12371&t_i_m_e=1512708492672";
	}
</script>

<iframe name="report1_saveAs_frame" id="report1_saveAs_frame" src="" style="display:none"></iframe>
<script language=javascript>
	function report1_saveAsText() {
		document.report1_saveAs_frame.location = "/WSSBSL/reportServlet?action=18&file=%2Fzzs2013Ybnsr%2Fgdzcjx.raq&srcType=file&separator=%09&lineBreak=%0A&reportParamsId=15127084924383936112074&cachedId=10_1_1_176_8080_12371&t_i_m_e=1512708492672";
	}
</script>

<script language=javascript>
	function report1_pivot() {
		window.open( "/WSSBSL/reportServlet?action=28&file=%2Fzzs2013Ybnsr%2Fgdzcjx.raq&srcType=file&reportParamsId=15127084924383936112074&cachedId=10_1_1_176_8080_12371&t_i_m_e=1512708492672" );
	}
</script>

<script language=javascript>
	function report1_print() {
		document.report1_printIFrame.location = "/WSSBSL/reportServlet?action=2&name=report1&reportFileName=%2Fzzs2013Ybnsr%2Fgdzcjx.raq&srcType=file&savePrintSetup=no&appletJarName=runqianReport4Applet.jar%2CdmGraphApplet.jar&serverPagedPrint=no&mirror=no&reportParamsId=15127084924383936112074&cachedId=10_1_1_176_8080_12371&t_i_m_e=1512708492672";
	}
</script>
<iframe name="report1_printIFrame" id="report1_printIFrame" src="" style="position:absolute;left:-100px;top:-100px" width=50 height=50></iframe>
<script language=javascript>
	function report1_directPrint() {
		document.report1_printIFrame.location = "/WSSBSL/reportServlet?action=30&name=report1&reportFileName=%2Fzzs2013Ybnsr%2Fgdzcjx.raq&srcType=file&savePrintSetup=no&appletJarName=runqianReport4Applet.jar%2CdmGraphApplet.jar&needPrintPrompt=no&needSelectPrinter=no&mirror=no&reportParamsId=15127084924383936112074&cachedId=10_1_1_176_8080_12371&t_i_m_e=1512708492672";
	}
</script>
<table id=report1_reportTbl style="position:relative;"><tr><td>
<div id=report1_reportDiv style="display:inline-block;text-align:left;position:relative;">
<table>
	<tr><td style="background-color:">
		<div noWrap style="font-family:宋体;font-size:13px;color:;">
<span id=runqian_submit style="cursor:pointer" onclick="_submitTable( report1 )"></span>		</div></td></tr></table>
<script language=javascript>
	var report1oldstatus = "";
	function report1428595over(){
		report1oldstatus = window.status;
		window.status = "广西国税办税便利通项目";
	}
	function report1428595out(){
		window.status = report1oldstatus;
	}
</script>
<style id="report1_style">
	.report1_1 { text-align:left;vertical-align:middle;font-family:宋体;font-size:12px;color:#000000;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:solid;border-right-width:1px;border-right-color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;line-height:16px;}
	.report1_2 { text-align:center;vertical-align:middle;font-family:宋体;font-size:12px;color:#000000;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:solid;border-right-width:1px;border-right-color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_3 { text-align:right;vertical-align:middle;font-family:宋体;font-size:12px;color:#008000;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:solid;border-right-width:1px;border-right-color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#000000;background-color:#E1E1E1;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_4 { text-align:left;vertical-align:middle;font-family:宋体;font-size:12px;color:#000000;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:none;border-left-width:1px;border-left-color:#000000;border-top-style:none;border-top-width:1px;border-top-color:#000000;border-right-style:none;border-right-width:1px;border-right-color:#000000;border-bottom-style:none;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_5 { text-align:right;vertical-align:middle;font-family:宋体;font-size:12px;color:#000000;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:solid;border-right-width:1px;border-right-color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_6 { text-align:center;vertical-align:middle;font-family:宋体;font-size:12px;color:#000000;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:solid;border-right-width:1px;border-right-color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;line-height:16px;}
	.report1_7 { text-align:right;vertical-align:middle;font-family:宋体;font-size:12px;color:#0000FF;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:solid;border-right-width:1px;border-right-color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#000000;background-color:transparent;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_8 { text-align:center;vertical-align:middle;font-family:宋体;font-size:18px;color:#000000;font-weight:bold;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:none;border-top-width:1px;border-top-color:#000000;border-right-style:none;border-right-width:1px;border-right-color:#000000;border-bottom-style:none;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_9 { text-align:right;vertical-align:middle;font-family:宋体;font-size:10px;color:#0000FF;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:solid;border-right-width:1px;border-right-color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#000000;background-color:transparent;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_10 { text-align:right;vertical-align:bottom;font-family:宋体;font-size:12px;color:#000000;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:solid;border-right-width:1px;border-right-color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_11 { text-align:right;vertical-align:middle;font-family:宋体;font-size:10px;color:#000000;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:solid;border-right-width:1px;border-right-color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#000000;background-color:#E0E0E0;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_12 { text-align:left;vertical-align:middle;font-family:宋体;font-size:10px;color:#000000;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:none;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:none;border-right-width:1px;border-right-color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_13 { text-align:center;vertical-align:middle;font-family:宋体;font-size:12px;color:#000000;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:none;border-top-width:1px;border-top-color:#000000;border-right-style:none;border-right-width:1px;border-right-color:#000000;border-bottom-style:none;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_14 { text-align:center;vertical-align:middle;font-family:宋体;font-size:18px;color:#000000;font-weight:bold;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:solid;border-right-width:1px;border-right-color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_15 { text-align:center;vertical-align:middle;font-family:宋体;font-size:16px;color:#000000;font-weight:bold;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:solid;border-right-width:1px;border-right-color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_16 { text-align:right;vertical-align:middle;font-family:宋体;font-size:12px;color:#000000;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:none;border-top-width:1px;border-top-color:#000000;border-right-style:none;border-right-width:1px;border-right-color:#000000;border-bottom-style:none;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_17 { text-align:left;vertical-align:bottom;font-family:宋体;font-size:12px;color:#000000;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:solid;border-right-width:1px;border-right-color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_18 { text-align:center;vertical-align:bottom;font-family:宋体;font-size:10px;color:#000000;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:solid;border-right-width:1px;border-right-color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_19 { text-align:center;vertical-align:middle;font-family:宋体;font-size:10px;color:#000000;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:solid;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:solid;border-right-width:1px;border-right-color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;white-space:nowrap;overflow:hidden;word-break:keep-all;}
	.report1_20 { text-align:left;vertical-align:middle;font-family:宋体;font-size:12px;color:#000000;font-weight:normal;font-style:normal;text-decoration:none;border-left-style:none;border-left-width:1px;border-left-color:#000000;border-top-style:solid;border-top-width:1px;border-top-color:#000000;border-right-style:none;border-right-width:1px;border-right-color:#000000;border-bottom-style:none;border-bottom-width:1px;border-bottom-color:#000000;background-color:#FFFFFF;white-space:nowrap;overflow:hidden;word-break:keep-all;}
</style>
<table id="report1" cellSpacing=0 cellPadding=0 selectText=yes onmouseout="report1428595out()" onmouseover="report1428595over()" rowCount=10 cols=10 submitCells="2" ajaxUrl="/WSSBSL/reportServlet" offSvr="/WSSBSL/servlet/saveLineoffInput" style="width:697px;table-layout:fixed;border-collapse:collapse">
	<colgroup>
		<col style="width:33px;"></col>
		<col style="width:89px;"></col>
		<col style="width:69px;"></col>
		<col style="width:161px;"></col>
		<col style="width:72px;"></col>
		<col style="width:113px;"></col>
		<col style="width:28px;"></col>
		<col style="width:132px;"></col>
	</colgroup>
	<tr rn="1" height=14 style="height:14px;">
		<td rowSpan=3 colSpan=8 id="report1_A1" colNo=1 value='46508319' onclick="_hideEditor()" class="report1_14">固定资产（不含不动产）进项税额抵扣情况表</td>
		<td rowSpan=3 id="report1_I1" colNo=9 value='' onclick="_hideEditor()" class="report1_15" style="display:none;"></td>
		<td id="report1_J1" colNo=10 bkj="true" value='' onclick="_hideEditor()" class="report1_8" style="display:none;"></td>
	</tr>
	<tr rn="2" height=27 style="height:27px;">
		<td id="report1_J2" colNo=10 bkj="true" value='' onclick="_hideEditor()" class="report1_8" style="display:none;"></td>
	</tr>
	<tr rn="3" height=20 style="height:20px;">
		<td id="report1_J3" colNo=10 bkj="true" value='' onclick="_hideEditor()" class="report1_8" style="display:none;"></td>
	</tr>
	<tr rn="4" height=25 style="height:25px;">
		<td colSpan=2 id="report1_A4" colNo=1 value='纳税人识别号：' onclick="_hideEditor()" class="report1_10">纳税人识别号：</td>
		<td colSpan=2 id="report1_C4" colNo=3 value='' onclick="_hideEditor()" class="report1_17"></td>
		<td id="report1_E4" colNo=5 value='填表日期：' onclick="_hideEditor()" class="report1_2">填表日期：</td>
		<td id="report1_F4" colNo=6 value='2017-12-08' onclick="_hideEditor()" class="report1_2">2017-12-08</td>
		<td colSpan=2 id="report1_G4" colNo=7 value='金额单位:元（列至角分）' onclick="_hideEditor()" class="report1_2">金额单位:元（列至角分）</td>
		<td id="report1_I4" colNo=9 value='' onclick="_hideEditor()" class="report1_18" style="display:none;"></td>
		<td id="report1_J4" colNo=10 bkj="true" value='' onclick="_hideEditor()" class="report1_13" style="display:none;"></td>
	</tr>
	<tr rn="5" height=40 style="height:40px;">
		<td colSpan=2 id="report1_A5" colNo=1 value='纳税人名称（公章）：' onclick="_hideEditor()" class="report1_5">纳税人名称（公章）：</td>
		<td colSpan=2 id="report1_C5" colNo=3 value='' onclick="_hideEditor()" class="report1_1"></td>
		<td id="report1_E5" colNo=5 value='所属时期：' onclick="_hideEditor()" class="report1_2">所属时期：</td>
		<td id="report1_F5" colNo=6 value='' onclick="_hideEditor()" class="report1_2"></td>
		<td id="report1_G5" colNo=7 value='至' onclick="_hideEditor()" class="report1_2">至</td>
		<td id="report1_H5" colNo=8 value='' onclick="_hideEditor()" class="report1_2"></td>
		<td id="report1_I5" colNo=9 value='' onclick="_hideEditor()" class="report1_19" style="display:none;"></td>
		<td id="report1_J5" colNo=10 bkj="true" value='' onclick="_hideEditor()" class="report1_13" style="display:none;"></td>
	</tr>
	<tr rn="6" height=32 style="height:32px;">
		<td colSpan=3 id="report1_A6" colNo=1 value='项 目' onclick="_hideEditor()" class="report1_2">项&nbsp;目</td>
		<td colSpan=2 id="report1_D6" colNo=4 value='当期申报抵扣的固定资产进项税额' onclick="_hideEditor()" class="report1_6">当期申报抵扣的固定资产进项税额</td>
		<td colSpan=3 id="report1_F6" colNo=6 value='当期申报抵扣的固定资产进项税额累计' onclick="_hideEditor()" class="report1_6">当期申报抵扣的固定资产进项税额累计</td>
		<td id="report1_I6" colNo=9 value='' onclick="_hideEditor()" class="report1_19" style="display:none;"></td>
		<td id="report1_J6" colNo=10 bkj="true" value='' onclick="_hideEditor()" class="report1_13" style="display:none;"></td>
	</tr>
	<tr rn="7" height=25 style="height:25px;">
		<td colSpan=3 id="report1_A7" colNo=1 value='增值税专用发票' onclick="_hideEditor()" class="report1_6">增值税专用发票</td>
		<td colSpan=2 id="report1_D7" colNo=4 modifiable=true writable=true editStyle="1" inputDataType="2" value='13122.0' format="%230.00" digits="2" onclick="_displayEditor()" class="report1_7">13122.00</td>
		<td colSpan=3 id="report1_F7" colNo=6 value='13122.0' format="%230.00" digits="2" onclick="_hideEditor()" class="report1_3">13122.00</td>
		<td id="report1_I7" colNo=9 value='0' format="0.00" digits="2" onclick="_hideEditor()" class="report1_9" style="display:none;">0.00</td>
		<td id="report1_J7" colNo=10 bkj="true" value='0.0' onclick="_hideEditor()" class="report1_16" style="display:none;"></td>
	</tr>
	<tr rn="8" height=25 style="height:25px;">
		<td colSpan=3 id="report1_A8" colNo=1 value='海关进口增值税专用缴款书' onclick="_hideEditor()" class="report1_6">海关进口增值税专用缴款书</td>
		<td colSpan=2 id="report1_D8" colNo=4 modifiable=true writable=true editStyle="1" inputDataType="2" value='1.2321321E7' format="%230.00" digits="2" onclick="_displayEditor()" class="report1_7">12321321.00</td>
		<td colSpan=3 id="report1_F8" colNo=6 value='1.2321321E7' format="%230.00" digits="2" onclick="_hideEditor()" class="report1_3">12321321.00</td>
		<td id="report1_I8" colNo=9 value='0' format="0.00" digits="2" onclick="_hideEditor()" class="report1_9" style="display:none;">0.00</td>
		<td id="report1_J8" colNo=10 bkj="true" value='0.0' onclick="_hideEditor()" class="report1_16" style="display:none;"></td>
	</tr>
	<tr rn="9" height=25 style="height:25px;">
		<td colSpan=3 id="report1_A9" colNo=1 value='合 计' onclick="_hideEditor()" class="report1_6">合&nbsp;计</td>
		<td colSpan=2 id="report1_D9" colNo=4 value='1.2334443E7' format="%230.00" digits="2" onclick="_hideEditor()" class="report1_3">12334443.00</td>
		<td colSpan=3 id="report1_F9" colNo=6 value='1.2334443E7' format="%230.00" digits="2" onclick="_hideEditor()" class="report1_3">12334443.00</td>
		<td id="report1_I9" colNo=9 value='' onclick="_hideEditor()" class="report1_11" style="display:none;"></td>
		<td id="report1_J9" colNo=10 bkj="true" value='' onclick="_hideEditor()" class="report1_16" style="display:none;"></td>
	</tr>
	<tr rn="10" height=25 style="height:25px;">
		<td colSpan=8 id="report1_A10" colNo=1 value='    注：本表一式二份，一份纳税人留存，一份主管税务机关留存。' onclick="_hideEditor()" class="report1_20">&nbsp;&nbsp;&nbsp;&nbsp;注：本表一式二份，一份纳税人留存，一份主管税务机关留存。</td>
		<td id="report1_I10" colNo=9 value='' onclick="_hideEditor()" class="report1_12" style="display:none;"></td>
		<td id="report1_J10" colNo=10 bkj="true" value='' onclick="_hideEditor()" class="report1_4" style="display:none;"></td>
	</tr>
</table><script language=javascript>
	_initInput( document.getElementById( 'report1' ) );
	_formatData( document.getElementById( 'report1' ) );
</script>
<script language=javascript>
	function report1_autoCalc( cellName ) {
		var value, cells;
		cells = ",,D7,J7,";
		if( cells.indexOf( ',' + cellName + ',' ) >= 0 ) {
			try { value = (_parseValue( document.getElementById( 'report1_D7' ) )+_parseValue( document.getElementById( 'report1_J7' ) )).toFixed(2);
				document.getElementById( 'report1_F7' ).setAttribute( 'value', value + "" );
				document.getElementById( 'report1_F7' ).innerText = value + "";
				_formatCalcValue( document.getElementById( 'report1_F7' ) );
			}catch(e1){}
		}
		cells = ",,D8,J8,";
		if( cells.indexOf( ',' + cellName + ',' ) >= 0 ) {
			try { value = (_parseValue( document.getElementById( 'report1_D8' ) )+_parseValue( document.getElementById( 'report1_J8' ) )).toFixed(2);
				document.getElementById( 'report1_F8' ).setAttribute( 'value', value + "" );
				document.getElementById( 'report1_F8' ).innerText = value + "";
				_formatCalcValue( document.getElementById( 'report1_F8' ) );
			}catch(e1){}
		}
		cells = ",,D7,D8,";
		if( cells.indexOf( ',' + cellName + ',' ) >= 0 ) {
			try { value = (_parseValue( document.getElementById( 'report1_D7' ) )+_parseValue( document.getElementById( 'report1_D8' ) )).toFixed(2);
				document.getElementById( 'report1_D9' ).setAttribute( 'value', value + "" );
				document.getElementById( 'report1_D9' ).innerText = value + "";
				_formatCalcValue( document.getElementById( 'report1_D9' ) );
			}catch(e1){}
		}
		cells = ",,F7,D7,J7,F8,D8,J8,";
		if( cells.indexOf( ',' + cellName + ',' ) >= 0 ) {
			try { value = (_parseValue( document.getElementById( 'report1_F7' ) )+_parseValue( document.getElementById( 'report1_F8' ) )).toFixed(2);
				document.getElementById( 'report1_F9' ).setAttribute( 'value', value + "" );
				document.getElementById( 'report1_F9' ).innerText = value + "";
				_formatCalcValue( document.getElementById( 'report1_F9' ) );
			}catch(e1){}
		}
		try{ group_autoCalc( 'report1_' + cellName ); }catch(e){}
	}

	function report1_checkValid() {
		return true;
	}

</script>
</div>
</td></tr></table>
<div style="display:none"><form id="report1_submitForm" method=post action="/WSSBSL/reportServlet.aspx?action=11" target="submitFrame">
	<input type=hidden name=fileName value="/zzs2013Ybnsr/gdzcjx.raq">
	<input type=hidden name=srcType value="file">
	<input type=hidden name=cachedId value="10_1_1_176_8080_12371">
	<input type=hidden name=pageUrl value="/WSSBSL/reportJsp/showReport.jsp?raq=%2Fzzs2013Ybnsr%2Fgdzcjx.raq&nsrsbh=450100399111430&sbzt=0&skssq=20171111&ssqq=2017-11-01&ssqz=2017-11-30&isTbBz=0&reportParamsId=15127084924383936112074">
	<input type=hidden name=backAndRefresh value="/reportJsp/success.jsp">
	<input type=hidden name=promptAfterSave value="no">
	<input type=hidden name=saveDataByListener value="no">
	<input type=hidden name=inputExceptionPage value="/reportJsp/inputException.jsp">
	<input type=hidden name=keyRepeatError value="no">
	<input type=hidden name=data>
	<input type=hidden name=params value="bbmc=WBJK_SB_ZZS_2003_FB_GDZCJXSEDK;xmlName=zzs2013/zzs_ybnsr_gdzcb;sbzt=0;ssqq=2017-11-01;skssq=20171111;nsrsbh=450100399111430;raq=/zzs2013Ybnsr/gdzcjx.raq;ssqz=2017-11-30;isTbBz=0">
	<input type=hidden name=inputListener value="cn.gxgs.bsblt.wssb.wssbsl.report.action.RQReportAction">
</form>
</div>
<script language=javascript>
	function report1_importExcel() {
		var address = "/WSSBSL/reportServlet?action=17&fileName=/zzs2013Ybnsr/gdzcjx.raq&srcType=file&cachedId=10_1_1_176_8080_12371&isScroll=0&backAndRefresh=/reportJsp/success.jsp&webTableName=report1&canSelectSheet=no&params=bbmc%3DWBJK_SB_ZZS_2003_FB_GDZCJXSEDK%3BxmlName%3Dzzs2013%2Fzzs_ybnsr_gdzcb%3Bsbzt%3D0%3Bssqq%3D2017-11-01%3Bskssq%3D20171111%3Bnsrsbh%3D450100399111430%3Braq%3D%2Fzzs2013Ybnsr%2Fgdzcjx.raq%3Bssqz%3D2017-11-30%3BisTbBz%3D0&inputListener=cn.gxgs.bsblt.wssb.wssbsl.report.action.RQReportAction&canImport2DB=1";
		rq_showPopWin( address, 400, 180, null );
	}
</script>
<script language=javascript>
	function report1_save() {
		_submitTable( document.getElementById( "report1" ) );
	}
</script>
</div>

	</td>
	</tr>
</table>
</body>
</html>

