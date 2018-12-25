﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sword_SB104xqykjzzcwbsCtrl_toSbfb_05.aspx.cs" Inherits="JlueTaxSystemGXGS.sword_SB104xqykjzzcwbsCtrl_toSbfb_05" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>金税三期业务工作门户</title>
		<script language="javascript" type="text/javascript" src="../../swordweb/core/jsimport/Sword.js"></script>
		<script language="javascript" type="text/javascript" src="../../gt3_public/formula_engine.js"></script>
       	<script type="text/javascript" src="/gt3_public/cacheindex.js"></script>
       	<script language='javascript' type='text/javascript' src='../../sb/sb104/sb104_chdpl.js'></script>
       <script language='javascript' type='text/javascript' src='/gy/gy011/gyPrint.js'></script>
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
		<div class="wrapper">
			<div sword='PageInit' onFinish="initV();"></div>

			<div sword="SwordForm" name="nsrxxForm6" caption="纳税人基本信息"
				panel="true" userdefine="true" vType="fldiv">
				<table class="tab_form" border="0" cellpadding="0" cellspacing="0">
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
							<div name="nsrsbh" type="text" disable="true"></div>
						</td>
						<th style="text-align: right; padding-right: 6px">
							纳税人名称
						</th>
						<td colspan=3>
							<div name="nsrmc" type="text" disable="true"></div>
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
							<div name="skssqq" type="date" rule="must" disable="true"></div>
						</td>
						<th
							style="border-left: none; border-right: none; text-align: center">
							<span class="red">*</span>所属期止
						</th>
						<td style="border-left: none">
							<div name="skssqz" type="date" rule="must" disable="true"></div>
						</td>
					</tr>
				</table>
			</div>

			<div sword="SwordForm" name="chdplForm" caption="存货的披露（适用执行小企业会计准则的企业）"
				panel="true" userdefine="true">
				<table class="tab_form" border="0" cellpadding="0" cellspacing="0">
					<colgroup>
						<col style="width: 40%" />
						<col style="width: 20%" />
						<col style="width: 20%" />
						<col style="width: 20%" />
					</colgroup>

					<tr>
						<th style="text-align: center">
							项 目
						</th>
						<th style="text-align: center">
							期末账面余额
						</th>
						<th style="text-align: center">
							期末市价
						</th>
						<th style="text-align: center">
							期末账面余额与期末市价的差额
						</th>
					</tr>
					<tr>
						<td style="text-align: left; background-color: #e8f5ff;">
							<table cellpadding="0" cellspacing="0" style="border:0px;">
								<colgroup><col width="13%"></col><col width="87%"></col></colgroup>
								<tr>
									<td style="border:0px;text-align:right;background-color:#EDF5FD;"></td>
									<td style="border:0px;background-color:#EDF5FD;">
										<div style="color: black" name="h1l1" type="label" 
											defValue="1．原材料"></div>
						  			</td>
						  		</tr>
						  	</table>
						</td>
						<td>
							<div name="h1l2" type="text" defValue="0.00" rule="number_must"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
						<td>
							<div name="h1l3" type="text" defValue="0.00" rule="number_must"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
						<td>
							<div name="h1l4" type="text" defValue="0.00" rule="number_must"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
					</tr>
					<tr>
						<td style="text-align: left; background-color: #e8f5ff;">
							<table cellpadding="0" cellspacing="0" style="border:0px;">
								<colgroup><col width="13%"></col><col width="87%"></col></colgroup>
								<tr>
									<td style="border:0px;text-align:right;background-color:#EDF5FD;"></td>
									<td style="border:0px;background-color:#EDF5FD;">
										<div style="color: black" name="h2l1" type="label" 
											defValue="2．在产品"></div>
						  			</td>
						  		</tr>
						  	</table>
						</td>
						<td>
							<div name="h2l2" type="text" defValue="0.00" rule="number_must"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
						<td>
							<div name="h2l3" type="text" defValue="0.00" rule="number_must"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
						<td>
							<div name="h2l4" type="text" defValue="0.00" rule="number_must"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
					</tr>
					<tr>
						<td style="text-align: left; background-color: #e8f5ff;">
							<table cellpadding="0" cellspacing="0" style="border:0px;">
								<colgroup><col width="13%"></col><col width="87%"></col></colgroup>
								<tr>
									<td style="border:0px;text-align:right;background-color:#EDF5FD;"></td>
									<td style="border:0px;background-color:#EDF5FD;">
										<div style="color: black" name="h3l1" type="label" 
											defValue="3．库存商品"></div>
						  			</td>
						  		</tr>
						  	</table>
						</td>
						<td>
							<div name="h3l2" type="text" defValue="0.00" rule="number_must"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
						<td>
							<div name="h3l3" type="text" defValue="0.00" rule="number_must"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
						<td>
							<div name="h3l4" type="text" defValue="0.00" rule="number_must"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
					</tr>
					<tr>
						<td style="text-align: left; background-color: #e8f5ff;">
							<table cellpadding="0" cellspacing="0" style="border:0px;">
								<colgroup><col width="13%"></col><col width="87%"></col></colgroup>
								<tr>
									<td style="border:0px;text-align:right;background-color:#EDF5FD;"></td>
									<td style="border:0px;background-color:#EDF5FD;">
										<div style="color: black" name="h4l1" type="label" 
											defValue="4．周转材料"></div>
						  			</td>
						  		</tr>
						  	</table>
						</td>
						<td>
							<div name="h4l2" type="text" defValue="0.00" rule="number_must"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
						<td>
							<div name="h4l3" type="text" defValue="0.00" rule="number_must"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
						<td>
							<div name="h4l4" type="text" defValue="0.00" rule="number_must"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
					</tr>
					<tr>
						<td style="text-align: left; background-color: #e8f5ff;">
							<table cellpadding="0" cellspacing="0" style="border:0px;">
								<colgroup><col width="13%"></col><col width="87%"></col></colgroup>
								<tr>
									<td style="border:0px;text-align:right;background-color:#EDF5FD;"></td>
									<td style="border:0px;background-color:#EDF5FD;">
										<div style="color: black" name="h5l1" type="label" 
											defValue="5．消耗性生物资产"></div>
						  			</td>
						  		</tr>
						  	</table>
						</td>
						<td>
							<div name="h5l2" type="text" defValue="0.00" rule="number_must"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
						<td>
							<div name="h5l3" type="text" defValue="0.00" rule="number_must"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
						<td>
							<div name="h5l4" type="text" defValue="0.00" rule="number_must"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
					</tr>
					<tr>
						<td style="text-align: left; background-color: #e8f5ff;">
							<table cellpadding="0" cellspacing="0" style="border:0px;">
								<colgroup><col width="10%"></col><col width="90%"></col></colgroup>
								<tr>
									<td style="border:0px;text-align:right;background-color:#EDF5FD;"></td>
									<td style="border:0px;background-color:#EDF5FD;">
										<div style="color: black" name="h6l1" type="label" 
											defValue="合  计"></div>
						  			</td>
						  		</tr>
						  	</table>
						</td>
						<td>
							<div name="h6l2" type="text" defValue="0.00" rule="number_must" disable="true"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
						<td>
							<div name="h6l3" type="text" defValue="0.00" rule="number_must" disable="true"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
						<td>
							<div name="h6l4" type="text" defValue="0.00" rule="number_must" disable="true"
								format="{'type':'number','format':'#,##0.00'}"
								style="text-align: right"></div>
						</td>
					</tr>
				</table>
			</div>
		</div>
					
<div sword='SwordToolBar' name='qykjzdInner' style="width: 100%;"
	class="tab_botton" showType="mini" id="wtdzsb" isFixed='false'>
	<!--  <div name="save" type="save" caption="保存" quickKey="Ctrl+S"  enabled='true' onclick="saveTrue();"></div>												
	<div name="refresh" type="refresh" caption="重置" quickKey="Ctrl+R" enabled='true' onclick="reset();"></div>
-->
	<div name="bcBtn" sword="SwordSubmit" btnName="保存" isShow="true"
	postType="ajax" class="submitbutton" onSubmitBefore="savefb();" style="margin-right:30px" ></div>
	<div name="qxBtn" sword="SwordSubmit" btnName="重置" isShow="true"
		postType="ajax" class="submitbutton" onSubmitBefore="reset();"></div>
</div>


<!-- 					<script language='javascript' type='text/javascript' src='/gy/gy011/gyPrint.js'></script> -->
	</body>

</html>
<div id="SwordPageData"  style='display:none' data='{"data":[{"name":"gwssswjg","value":"14501950500","type":""},{"name":"sessionID","value":"d2f2c040c3f14a9996ac961bdad671d4","type":""}]}'></div>

