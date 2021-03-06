﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.sword.SB151zlbsslCtrl_initBd.aspx.cs" Inherits="JlueTaxSystemGuangXiBS.form_sword_SB151zlbsslCtrl_initBd" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<title>小企业会计准则财务报表与信息采集</title>
			<script language="javascript" type="text/javascript"
				src="../../swordweb/core/jsimport/Sword.js"></script>
			<script language="javascript" type="text/javascript"
				src="../../gt3_public/formula_engine.js"></script>
			<script language="javascript" type="text/javascript"
				src="../../sb/gy/sb_gy.js"></script>
			<script type="text/javascript" src="/gt3_public/cacheindex.js"></script>
			<script language='javascript' type='text/javascript'
				src='../../sb/sb104/sb104_zcfzb.js'></script>
			<script language='javascript' type='text/javascript'
				src='/gy/gy011/gyPrint.js'></script>
						<script language="javascript" type="text/javascript"
			src="../../sb/gy/sb_gy.js"></script>
</head>
	<body> 
	<!-- 缓存 -->
	<div style="position: absolute; top: 0; left: -20"
		id="_persist_flash_wrap">
		<center>
			<object id="_persist_flash" name="_persist_flash" width="1"
				height="1" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">
				<param name="movie"
					value="/swordweb/widgets/SwordClientCache/swordcache.swf"></param>
				<param name="allowFullScreen" value="true"></param>
				<param name="allowscriptaccess" value="always"></param>
				<param name="quality" value="high" />
				<param name="flashvars" value="autostart=true" />
				<embed id="ex_persist_flash"
					src="/swordweb/widgets/SwordClientCache/swordcache.swf"
					type="application/x-shockwave-flash" width="1" height="1"
					allowscriptaccess="always" quality="high"
					flashvars="autostart=true"></embed>
			</object>
			<div style="display: none; font-size: 30px;" id="_persist_flash_text">为了系统使用更顺畅，请点击【允许】按钮。</div>
		</center>
	</div>
	<!-- 缓存 -->
		<div>
			<div sword='PageInit' onFinish="initV();"></div>
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr>
					<td>
						
	<div sword='SwordToolBar' name='zzsybnsrsb' style="width: 100%" showType="mini"
				id="zzsybnsrsb">
				<div name="org" type="custom" >         
        <table style="height:25px; margin: -5px 0px 0px 0px">
        	<tr>
        		<td valign="top" class="sk_ss">主附表树:</td>
        		<td valign="top"><div sword='SwordTree'  onNodeClick="openTab();" name="SwordTreeJSON"
									inputWidth="300px" width="500px" select="true" autoShrink="true"
									dataStr=" {'data':[{'code':'00','caption':'小企业会计准则资产负债表'},
									{'code':'01','caption':'小企业会计准则利润表月报'}, 
									 {'code':'02','caption':'小企业会计准则现金流量表月报'}
									],'name':'SwordTreeJSON','sword':'SwordTree'}"
									 ></div>
			    </td>
        	</tr>
        </table>       
    </div>
				<div name="save" type="save"  caption="申报"  quickKey="Ctrl+S" enabled='true' onclick="saveBeforeCheck()">
					<div widgetName="nsrxxForm" isVal='true'></div>
					<div widgetName="zcfzbxxForm" isVal='true'></div>
				</div>
				<div name="reset" type="redo" caption="重置" quickKey="Ctrl+R" enabled='true'	onclick="reset();"></div>
				<div name="import" type="import" caption="导入"  quickKey="Ctrl+E"  enabled='true'	onclick="getDrxx();"></div>
				<div name="downloadExcelTemplet" type="export" caption="模板下载" quickKey="Ctrl+Q" enabled='true' onclick="downloadExcelTemplet();"></div>
				<div name="export" type="export" caption="导出" quickKey="Ctrl+E"  enabled='false'	onclick="exportsbxx();"></div>
				<!--  <div name="next" type="find" caption="下一户" quickKey="Ctrl+N"  enabled='true' onclick="next();"></div>-->
				<div name="print" type="print" caption="打印" quickKey="Ctrl+P"  enabled='true'	 onclick="printhtm();"></div>
				<div name="back" type="back" caption="返回" onclick="backSfxywh();"></div>
</div>
						<div id="fjxxGrid_id">
						
	<div id="ftpkg">
		<div sword="SwordGrid" name="flzlGrid" caption="附件上传" autoHeight="false" checkMoudle="false"  fenye="false" dataX="100%" dataY="200" align="center">
	         <div name="flzlDm" caption="flzlDm" type="hidden" x="5%"></div>
	         <div name="fileMsg" type="hidden"></div>
	         <div name="serverFileName" caption="serverFileName" type="hidden" x="5%"></div>
	         <div name="xh" type="rowNum" caption="序号" disable="true" x="5%"></div>
	         <div name="flzlmc" caption="附送资料名称" type="text" x="45%" disable="true"></div>
	         <div name="sfbb" caption="是否必报" type="select" x="10%" disable="true">
				<div code="1" caption="是" ></div>
				<div code="2" caption="否" ></div>
			 </div>
	         <div name="flzlzt" caption="状态" type="select" x="10%" defvalue="N" disable="true">
				 <div code="Y" caption="已上传" ></div>
				 <div code="N" caption="未上传" ></div>
	 		 </div>
	     	 <div name="cj" caption="上传" type="a" css = 'text-align:center' x="10%" onClick="flzlCj()"></div>
	     	 <div name="ck" caption="查看" type="a" css = 'text-align:center' x="10%" onClick="flzlCk()"></div>
	         <div name="qc" caption="删除" type="a" css = 'text-align:center' x="10%" onClick="flzlDel()" ></div>
		</div>
	
			<table class="tab_botton" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<div name="xzSubmit2" sword="SwordSubmit" btnName="下载"
							enabled="true" isShow="false" postType="download"
							ctrl="GY013AttachOperateCtrl_downloadFile4FTP" class="submitbutton"></div>
					</td>
				</tr>
			</table>
	</div>
<script language="javascript" type="text/javascript" src="../../gy/gy013/attachOperate_flzlList.js"></script>	

<div style="display:none">
	<object id="LODOP_X" classid="clsid:2105C259-1E0C-4534-8141-A753534CB4CA" width=100% height=600 >
			<param name="Color" value="#ADD8E6"></param>
	</object>
</div>

<script language="javascript" type="text/javascript" src='../../gy/dy/script/LodopFuncs.js'></script>
<script language='javascript' type='text/javascript' src='../../sb/gy/sb_gy.js'></script>
<script language="javascript" type="text/javascript">
function print(){
	zlbstydy();
}
</script>	
					    </div>
						<div>
							<div id="table00">
								<div sword="SwordForm" name="nsrxxForm" caption="纳税人基本信息"
									panel="true" userdefine="true" vType="fldiv">
									<table class="tab_form" border="0" cellpadding="0"
										cellspacing="0">
										<colgroup>
											<col style="width: 15%" />
											<col style="width: 20%" />
											<col style="width: 15%" />
											<col style="width: 20%" />
											<col style="width: 10" />
											<col style="width: 20%" />
										</colgroup>
										<tr>
											<th style="text-align: right; padding-right: 6px">
												<span class="red">*</span>纳税人识别号
											</th>
											<td>
												<div name="nsrsbh" type="text" rule="must" disable="true"></div>
											</td>
											<th style="text-align: right; padding-right: 6px">
												纳税人名称
											</th>
											<td colspan=3>
												<div name="nsrmc" type="text" rule="must" disable="true"></div>
											</td>
										</tr>
										<tr>
											<th style="text-align: right; padding-right: 6px">
												<span class="red">*</span>报送日期
											</th>
											<td>
												<div name="bsrq" type="date" rule="must" disable="true"></div>
											</td>
											<th style="text-align: right; padding-right: 6px">
												<span class="red">*</span>所属期起
											</th>
											<td style="border-right: none;">
												<div name="skssqq" type="date" rule="must" returnRealValue="true" disable="true"></div>
											</td>
											<th
												style="border-left: none; border-right: none; text-align: center">
												<span class="red">*</span>所属期止
											</th>
											<td style="border-left: none">
												<div name="skssqz" type="date" rule="must"
													returnRealValue=true disable="true"></div>
											</td>
										</tr>
										<tr style="display: none">
										<td>
											<div name="bbssq" type="text"></div>
										</td>
									   </tr>
									</table>
								</div>

								<div sword="SwordForm" name="zcfzbxxForm"
									caption="资产负债表(适用执行小企业会计准则的企业)" panel="true" userdefine="true"
									vType='fldiv'>
									<table class="tab_form" border="0" cellpadding="0"
										cellspacing="0">
										<colgroup>
											<col style="width: 19%" />
											<col style="width: 5%" />
											<col style="width: 13%" />
											<col style="width: 13%" />
											<col style="width: 19%" />
											<col style="width: 5%" />
											<col style="width: 13%" />
											<col style="width: 13%" />
										</colgroup>

										<tr>
											<th style="text-align: center">
												资 产
											</th>
											<th style="text-align: center">
												行次
											</th>
											<th style="text-align: center">
												期末余额
											</th>
											<th style="text-align: center">
												年初余额
											</th>
											<th style="text-align: center">
												负债和所有者权益
											</th>
											<th style="text-align: center">
												行次
											</th>
											<th style="text-align: center">
												期末余额
											</th>
											<th style="text-align: center">
												年初余额
											</th>
										</tr>
										<tr>
											<th colspan="4" style="text-align: left">
												流动资产:
											</th>
											<th colspan="4" style="text-align: left">
												流动负债:
											</th>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h1l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;货币资金"></div>
											</td>
											<th style="text-align: center">
												1
											</th>
											<td>
												<div name="h1l2" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h1l3" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h1l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;短期借款"></div>
											</td>
											<th style="text-align: center">
												31
											</th>
											<td>
												<div name="h1l5" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h1l6" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h2l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;短期投资"></div>
											</td>
											<th style="text-align: center">
												2
											</th>
											<td>
												<div name="h2l2" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h2l3" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h2l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;应付票据"></div>
											</td>
											<th style="text-align: center">
												32
											</th>
											<td>
												<div name="h2l5" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h2l6" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h3l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;应收票据"></div>
											</td>
											<th style="text-align: center">
												3
											</th>
											<td>
												<div name="h3l2" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h3l3" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h3l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;应付账款"></div>
											</td>
											<th style="text-align: center">
												33
											</th>
											<td>
												<div name="h3l5" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h3l6" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h4l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;应收账款"></div>
											</td>
											<th style="text-align: center">
												4
											</th>
											<td>
												<div name="h4l2" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h4l3" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h4l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;预收账款"></div>
											</td>
											<th style="text-align: center">
												34
											</th>
											<td>
												<div name="h4l5" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h4l6" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h5l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;预付账款"></div>
											</td>
											<th style="text-align: center">
												5
											</th>
											<td>
												<div name="h5l2" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h5l3" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h5l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;应付职工薪酬"></div>
											</td>
											<th style="text-align: center">
												35
											</th>
											<td>
												<div name="h5l5" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h5l6" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h6l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;应收股利"></div>
											</td>
											<th style="text-align: center">
												6
											</th>
											<td>
												<div name="h6l2" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h6l3" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h6l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;应交税费"></div>
											</td>
											<th style="text-align: center">
												36
											</th>
											<td>
												<div name="h6l5" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h6l6" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h7l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;应收利息"></div>
											</td>
											<th style="text-align: center">
												7
											</th>
											<td>
												<div name="h7l2" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h7l3" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h7l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;应付利息"></div>
											</td>
											<th style="text-align: center">
												37
											</th>
											<td>
												<div name="h7l5" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h7l6" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h8l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他应收款"></div>
											</td>
											<th style="text-align: center">
												8
											</th>
											<td>
												<div name="h8l2" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h8l3" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h8l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;应付利润"></div>
											</td>
											<th style="text-align: center">
												38
											</th>
											<td>
												<div name="h8l5" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h8l6" type="text" rule="number_must"
													defValue="0.00"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h9l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;存货"></div>
											</td>
											<th style="text-align: center">
												9
											</th>
											<td>
												<div name="h9l2" type="text" defValue="0.00"
													rule="must_number_customFunction;formTest();"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h9l3" type="text" defValue="0.00"
													rule="must_number_customFunction;formTest1();"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h9l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他应付款"></div>
											</td>
											<th style="text-align: center">
												39
											</th>
											<td>
												<div name="h9l5" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h9l6" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h10l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中:原材料"></div>
											</td>
											<th style="text-align: center">
												10
											</th>
											<td>
												<div name="h10l2" type="text" defValue="0.00"
													rule="must_number_customFunction;formTest()"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h10l3" type="text" defValue="0.00"
													rule="must_number_customFunction;formTest1()"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h10l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他流动负债"></div>
											</td>
											<th style="text-align: center">
												40
											</th>
											<td>
												<div name="h10l5" type="text" defValue="0.00"
													rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h10l6" type="text" defValue="0.00"
													rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h11l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在产品"></div>
											</td>
											<th style="text-align: center">
												11
											</th>
											<td>
												<div name="h11l2" type="text" defValue="0.00"
													rule="must_number_customFunction;formTest()"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h11l3" type="text" defValue="0.00"
													rule="must_number_customFunction;formTest1()"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h11l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;流动负债合计"></div>
											</td>
											<th style="text-align: center">
												41
											</th>
											<td>
												<div name="h11l5" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h11l6" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h12l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;库存商品"></div>
											</td>
											<th style="text-align: center">
												12
											</th>
											<td>
												<div name="h12l2" type="text" defValue="0.00"
													rule="must_number_customFunction;formTest()"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h12l3" type="text" defValue="0.00"
													rule="must_number_customFunction;formTest1()"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<th colspan="4" style="text-align: left">
												非流动负债:
											</th>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h13l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;周转材料"></div>
											</td>
											<th style="text-align: center">
												13
											</th>
											<td>
												<div name="h13l2" type="text" defValue="0.00"
													rule="must_number_customFunction;formTest()"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h13l3" type="text" defValue="0.00"
													rule="must_number_customFunction;formTest1()"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h13l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;长期借款"></div>
											</td>
											<th style="text-align: center">
												42
											</th>
											<td>
												<div name="h13l5" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h13l6" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h14l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他流动资产"></div>
											</td>
											<th style="text-align: center">
												14
											</th>
											<td>
												<div name="h14l2" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h14l3" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h14l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;长期应付款"></div>
											</td>
											<th style="text-align: center">
												43
											</th>
											<td>
												<div name="h14l5" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h14l6" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h15l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;流动资产合计"></div>
											</td>
											<th style="text-align: center">
												15
											</th>
											<td>
												<div name="h15l2" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h15l3" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h15l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;递延收益"></div>
											</td>
											<th style="text-align: center">
												44
											</th>
											<td>
												<div name="h15l5" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h15l6" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<th colspan="4" style="text-align: left">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;非流动资产:
											</th>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h16l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他非流动负债"></div>
											</td>
											<th style="text-align: center">
												45
											</th>
											<td>
												<div name="h16l5" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h16l6" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h17l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;长期债券投资"></div>
											</td>
											<th style="text-align: center">
												16
											</th>
											<td>
												<div name="h17l2" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h17l3" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h17l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;非流动负债合计"></div>
											</td>
											<th style="text-align: center">
												46
											</th>
											<td>
												<div name="h17l5" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h17l6" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h18l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;长期股权投资"></div>
											</td>
											<th style="text-align: center">
												17
											</th>
											<td>
												<div name="h18l2" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h18l3" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h18l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;负债合计"></div>
											</td>
											<th style="text-align: center">
												47
											</th>
											<td>
												<div name="h18l5" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h18l6" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h19l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;固定资产原价"></div>
											</td>
											<th style="text-align: center">
												18
											</th>
											<td>
												<div name="h19l2" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h19l3" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<th></th>
											<th></th>
											<th></th>
											<th></th>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h20l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;减:累计折旧"></div>
											</td>
											<th style="text-align: center">
												19
											</th>
											<td>
												<div name="h20l2" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h20l3" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<th></th>
											<th></th>
											<th></th>
											<th></th>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h20l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;固定资产账面价值"></div>
											</td>
											<th style="text-align: center">
												20
											</th>
											<td>
												<div name="h21l2" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h21l3" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<th></th>
											<th></th>
											<th></th>
											<th></th>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h22l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在建工程"></div>
											</td>
											<th style="text-align: center">
												21
											</th>
											<td>
												<div name="h22l2" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h22l3" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<th></th>
											<th></th>
											<th></th>
											<th></th>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h23l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;工程物资"></div>
											</td>
											<th style="text-align: center">
												22
											</th>
											<td>
												<div name="h23l2" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h23l3" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<th></th>
											<th></th>
											<th></th>
											<th></th>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h24l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;固定资产清理"></div>
											</td>
											<th style="text-align: center">
												23
											</th>
											<td>
												<div name="h24l2" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h24l3" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<th></th>
											<th></th>
											<th></th>
											<th></th>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h25l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;生产性生物资产"></div>
											</td>
											<th style="text-align: center">
												24
											</th>
											<td>
												<div name="h25l2" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h25l3" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<th colspan="4" style="text-align: left">
												所有者权益(或股东权益):
											</th>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h26l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;无形资产"></div>
											</td>
											<th style="text-align: center">
												25
											</th>
											<td>
												<div name="h26l2" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h26l3" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h26l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;实收资本(或股本)"></div>
											</td>
											<th style="text-align: center">
												48
											</th>
											<td>
												<div name="h26l5" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h26l6" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h27l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;开发支出"></div>
											</td>
											<th style="text-align: center">
												26
											</th>
											<td>
												<div name="h27l2" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h27l3" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h27l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;资本公积"></div>
											</td>
											<th style="text-align: center">
												49
											</th>
											<td>
												<div name="h27l5" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h27l6" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h28l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;长期待摊费用"></div>
											</td>
											<th style="text-align: center">
												27
											</th>
											<td>
												<div name="h28l2" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h28l3" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h28l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;盈余公积"></div>
											</td>
											<th style="text-align: center">
												50
											</th>
											<td>
												<div name="h28l5" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h28l6" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h29l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他非流动资产"></div>
											</td>
											<th style="text-align: center">
												28
											</th>
											<td>
												<div name="h29l2" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h29l3" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h29l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;未分配利润"></div>
											</td>
											<th style="text-align: center">
												51
											</th>
											<td>
												<div name="h29l5" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h29l6" type="text" defValue="0.00" rule="number_must"
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h30l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;非流动资产合计"></div>
											</td>
											<th style="text-align: center">
												29
											</th>
											<td>
												<div name="h30l2" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h30l3" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h30l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;所有者权益(或股东权益)合计"></div>
											</td>
											<th style="text-align: center">
												52
											</th>
											<td>
												<div name="h30l5" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h30l6" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h31l1" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;资产合计"></div>
											</td>
											<th style="text-align: center">
												30
											</th>
											<td>
												<div name="h31l2" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h31l3" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td style="text-align: left; background-color: #e8f5ff;">
												<div style="color: black" name="h31l4" type="label"
													defValue="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;负债和所有者权益(或股东权益)总计"></div>
											</td>
											<th style="text-align: center">
												53
											</th>
											<td>
												<div name="h31l5" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
											<td>
												<div name="h31l6" type="text" defValue="0.00" disable='true'
													format="{'type':'number','format':'#,##0.00'}"
													style="text-align:right"></div>
											</td>
										</tr>
									</table>
								</div>
							</div>
							<div id="table01" style="display: none">
								<iframe id="table01iframe" src="" frameborder="0"
									style="height: 675px; width: 100%" scrolling="auto"></iframe>
							</div>
							<div id="table02" style="display: none">
								<iframe id="table02iframe" src="" frameborder="0"
									style="height: 675px; width: 100%" scrolling="auto"></iframe>
							</div>
							<div id="table03" style="display: none">
								<iframe id="table03iframe" src="" frameborder="0"
									style="height: 675px; width: 100%" scrolling="auto"></iframe>
							</div>
							<div id="table04" style="display: none">
								<iframe id="table04iframe" src="" frameborder="0"
									style="height: 675px; width: 100%" scrolling="auto"></iframe>
							</div>
							<div id="table05" style="display: none">
								<iframe id="table05iframe" src="" frameborder="0"
									style="height: 675px; width: 100%" scrolling="auto"></iframe>
							</div>
							<div id="table06" style="display: none">
								<iframe id="table06iframe" src="" frameborder="0"
									style="height: 675px; width: 100%" scrolling="auto"></iframe>
							</div>
							<div id="table07" style="display: none">
								<iframe id="table07iframe" src="" frameborder="0"
									style="height: 675px; width: 100%" scrolling="auto"></iframe>
							</div>
							<div id="table08" style="display: none">
								<iframe id="table08iframe" src="" frameborder="0"
									style="height: 675px; width: 100%" scrolling="auto"></iframe>
							</div>
							<div id="table09" style="display: none">
								<iframe id="table09iframe" src="" frameborder="0"
									style="height: 675px; width: 100%" scrolling="auto"></iframe>
							</div>
							<div id="table10" style="display: none">
								<iframe id="table10iframe" src="" frameborder="0"
									style="height: 675px; width: 100%" scrolling="auto"></iframe>
							</div>
							<div id="table11" style="display: none">
								<iframe id="table11iframe" src="" frameborder="0"
									style="height: 675px; width: 100%" scrolling="auto"></iframe>
							</div>
							<div id="table12" style="display: none">
								<iframe id="table12iframe" src="" frameborder="0"
									style="height: 675px; width: 100%" scrolling="auto"></iframe>
							</div>
							<div id="table13" style="display: none">
								<iframe id="table13iframe" src="" frameborder="0"
									style="height: 675px; width: 100%" scrolling="auto"></iframe>
							</div>
							<div id="table14" style="display: none">
								<iframe id="table14iframe" src="" frameborder="0"
									style="height: 675px; width: 100%" scrolling="auto"></iframe>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>

<div id="SwordPageData"  style='display:none' data='{"data":[{"name":"bszlmc","value":"《分部报表（地区分部）》","type":""},{"name":"nsrxxMap","data":{"zlbsuuid":{"value":"1E7C919EE8A154462C42CD32A60F0A24"},"zgswjDm":{"value":""},"swrydm":{"value":"000000dzswj"},"gdslxDm":{"value":"1"},"blrysfzjhm":{"value":""},"zlsl":{"value":"3"},"nsrsbh":{"value":"<%=nsrsbh %>"},"bszldm":{"value":"ZLA0610219"},"zlbsdlDm":{"value":"ZL1001"},"cwfzrxm":{"value":"李婷梅"},"bsrgddh":{"value":""},"swrymc":{"value":""},"kjzdzzDm":{"value":"102"},"ssqq":{"value":"2019-04-01"},"djxh":{"value":"10114507010114122457"},"scjydz":{"value":"钦州市永福西大街27号碧海盛世国际大厦1栋2单元508房"},"bbssq":{"value":""},"blrysfzjlxDm":{"value":""},"ssqz":{"value":"2019-06-30"},"skssqz":{"value":"2019-06-30"},"ynsrsbh":{"value":""},"zlbsxlDm":{"value":"ZL1001003"},"zllx":{"value":"1"},"skssqq":{"value":"2019-04-01"},"hyDm":{"value":"5219"},"nsqxDm":{"value":""},"nsrmc":{"value":"<%=nsrmc %>"},"fddbrxm":{"value":"刘荣"},"djrq":{"value":"2017-08-22 00:00:00"},"bszlmc":{"value":"《分部报表（地区分部）》"},"bsrq":{"value":"<%=tbrq %>"},"fddbrhfzrhyzsfzjhm":{"value":""},"scjydlxdh":{"value":""},"shxydm":{"value":"91450703MA5LB89JXN"},"zcdz":{"value":"钦州市永福西大街27号碧海盛世国际大厦1栋2单元508房"},"fjmqybz":{"value":"N"},"djzclxDm":{"value":"159"},"zgswjmc":{"value":"国家税务总局钦州市钦北区税务局"},"sfyhd":{"value":"Y"},"zgswskfjDm":{"value":"14507030000"},"nd":{"value":"2018"},"fddbrhfzrhyzsfzjzlDm":{"value":""},"dcnd":{"value":""},"nsrztDm":{"value":""},"zgswjgDm":{"value":""},"bsrxm":{"value":"李婷梅"},"zcfzbr":{"value":"2019-06-30"}},"sword":"SwordForm"},{"name":"nsrxxForm","data":{"zlbsuuid":{"value":"1E7C919EE8A154462C42CD32A60F0A24"},"zgswjDm":{"value":""},"swrydm":{"value":"000000dzswj"},"gdslxDm":{"value":"1"},"blrysfzjhm":{"value":""},"zlsl":{"value":"3"},"nsrsbh":{"value":"91450703MA5LB89JXN"},"bszldm":{"value":"ZLA0610219"},"zlbsdlDm":{"value":"ZL1001"},"cwfzrxm":{"value":"李婷梅"},"bsrgddh":{"value":""},"swrymc":{"value":""},"kjzdzzDm":{"value":"102"},"ssqq":{"value":"2019-04-01"},"djxh":{"value":"10114507010114122457"},"scjydz":{"value":"钦州市永福西大街27号碧海盛世国际大厦1栋2单元508房"},"bbssq":{"value":"2019-06"},"blrysfzjlxDm":{"value":""},"ssqz":{"value":"2019-06-30"},"skssqz":{"value":"<%=rqZ %>"},"ynsrsbh":{"value":""},"zlbsxlDm":{"value":"ZL1001003"},"zllx":{"value":"1"},"skssqq":{"value":"<%=rqQ %>"},"hyDm":{"value":"5219"},"nsqxDm":{"value":""},"nsrmc":{"value":"广西瑞佳荣达贸易有限公司"},"fddbrxm":{"value":"刘荣"},"djrq":{"value":"2017-08-22 00:00:00"},"bszlmc":{"value":"《分部报表（地区分部）》"},"bsrq":{"value":"<%=tbrq %>"},"fddbrhfzrhyzsfzjhm":{"value":""},"scjydlxdh":{"value":""},"shxydm":{"value":"91450703MA5LB89JXN"},"zcdz":{"value":"钦州市永福西大街27号碧海盛世国际大厦1栋2单元508房"},"fjmqybz":{"value":"N"},"djzclxDm":{"value":"159"},"zgswjmc":{"value":"国家税务总局钦州市钦北区税务局"},"sfyhd":{"value":"Y"},"zgswskfjDm":{"value":"14507030000"},"nd":{"value":"2018"},"fddbrhfzrhyzsfzjzlDm":{"value":""},"dcnd":{"value":""},"nsrztDm":{"value":""},"zgswjgDm":{"value":""},"bsrxm":{"value":"李婷梅"},"zcfzbr":{"value":"2019-06-30"}},"sword":"SwordForm"},{"name":"slxxForm","data":{"swjgmc":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"znDm":{"value":""},"gwxh":{"value":""},"swrymc":{"value":""},"lrrq":{"value":"<%=tbrq %>"}},"sword":"SwordForm"},{"name":"fjxxForm","data":{"swjgmc":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"znDm":{"value":""},"gwxh":{"value":""},"swrymc":{"value":""},"lrrq":{"value":"2019-08-09"}},"sword":"SwordForm"},{"name":"reCode","value":"1","type":""},{"name":"sqssqq","value":"2018-01-01","type":""},{"name":"sqssqz","value":"2018-12-31","type":""},{"name":"sfcfcj","value":"N","type":""},{"data":[{"caption":"钦北区","pcode":"450700","code":"450703"}],"dataType":"json","sword":"SwordTree","name":"xzqhszDm"},{"name":"cfdz","value":"","type":""},{"name":"bbssq","value":"","type":""},{"name":"sqcfdz","value":"","type":""},{"name":"bsfsDm","value":"2","type":""},{"name":"bszldm","value":"ZLA0610219","type":""},{"name":"djxh","value":"10114507010114122457","type":""},{"name":"djzclxDm","value":"159","type":""},{"name":"zllx","value":"1","type":""},{"name":"zlsl","value":"3","type":""},{"name":"zlbsxlDm","value":"ZL1001003","type":""},{"name":"zlbsdlDm","value":"ZL1001","type":""},{"name":"zlbsuuid","value":"1E7C919EE8A154462C42CD32A60F0A24","type":""},{"name":"zlbsuuidOld","value":"","type":""},{"name":"sntqcfdz","value":"2DD83FEB4AA1E675C0E8B1E7639AD9FC","type":""},{"data":[{"yxbz":"Y","mc":"gov.gt3.vo.sbzs.sb.sb104.Xqycwkjzzcwbszywbw","bdmc":"Syxqyzcfzb","caption":"小企业会计准则资产负债表","bh":"104","dzbzdszlDm":"BDA0610165","uuid":"9","code":"00","bszlDm":"ZLA0610316","zlbsxlDm":"ZL1001003"},{"yxbz":"Y","mc":"gov.gt3.vo.sbzs.sb.sb104.Xqycwkjzzcwbszywbw","bdmc":"Syxqylrb","caption":"小企业会计准则利润表","bh":"104","dzbzdszlDm":"BDA0610165","uuid":"10","code":"01","bszlDm":"ZLA0610317","zlbsxlDm":"ZL1001003"},{"yxbz":"Y","mc":"gov.gt3.vo.sbzs.sb.sb104.Xqycwkjzzcwbszywbw","bdmc":"Syxqyxjllb","caption":"小企业会计准则现金流量表","bh":"104","dzbzdszlDm":"BDA0610165","uuid":"11","code":"02","bszlDm":"ZLA0610318","zlbsxlDm":"ZL1001003"}],"dataType":"json","sword":"SwordTree","name":"SwordTreeJSON"},{"name":"sfbhfj","value":"N","type":""},{"name":"sfjsljz","value":"Y","type":""},{"name":"sfsjjs","value":"N","type":""},{"name":"lnShbbz","value":"N","type":""},{"name":"lnjsbbz","value":"N","type":""},{"name":"gwssswjg","value":"14507031000","type":""},{"name":"sessionID","value":"1a399211a7154de59c2111437bd2f934","type":""}]}'></div>

