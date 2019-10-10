﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sword.SB025YhssbCtrl_initView.aspx.cs" Inherits="JlueTaxSystemGuangXiBS.sword_SB025YhssbCtrl_initView" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>印花税申报</title>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'></meta>
<script language="javascript" type="text/javascript"
	src="../../swordweb/core/jsimport/Sword.js"></script>
<script type="text/javascript" src="/gt3_public/cacheindex.js"></script>
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
		<div sword="PageInit" onFinish="init();"></div>
		
<div sword='SwordToolBar' name='sbToolBar' style="width: 100%"
				showType="mini" id="sbToolBarNoTrees">
	<div name="org" type="custom">
								<table style="height: 25px; margin: -5px 0px 0px 0px">
									<tr>
										<td valign="top" style="font-size: 12px;">
											主附表树:
										</td>
										<td valign="top">
											<div sword='SwordTree' onNodeClick="setdata()"
												name="SwordTreeJSON" inputWidth="300px" width="500px"
												select="true" autoShrink="true"
												dataStr=" {'data':[{'code':'00','caption':'请选择'}],'name':'sbZfbTree','sword':'SwordTree'}">
											</div>
										</td>
									</tr>
								</table>
			</div>			
	<div name="import" type="import" caption="导入" quickKey="Ctrl+I" enabled='true' onclick="drxx();"></div>
	
	<div name="save" type="save" caption="申报" quickKey="Ctrl+S" enabled='true' onclick="declare();"></div>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<script type="text/javascript" src="/wsbs/pages/layout/layout3/cacheAdapter.js"></script>
	<script type="text/javascript" src="/sb/sb000/sb_tempdel.js"></script>
	<script type="text/javascript">
	
		
		_tempdel_arrVars['toolBarName'] = 'sbToolBar';
		_tempdel_arrVars['jspt_gds_dsymdz'] = 'http://dzswjssoysc.gt3.com:8001';
		_tempdel_arrVars['jspt_gds_bczfan'] = 'N';
		_tempdel_arrVars['jspt_gds_dzqh'] = 'GX';
		_tempdel_arrVars['jspt_gds_nx12xq'] = 'N';
		window.addListener("load", function(){tempdel_init('sbToolBar')});
		
	</script>
</head>
<body >
	
	<div name="tempsave_zf" type="revoke" caption="作废" quickKey=""
		onclick="click_open_sbcwgz();"></div>
</body>
</html>

	<div name="print" type="print" caption="打印" quickKey="Ctrl+P" enabled='false' onclick="printhtm();"></div> 
	<div name="export" type="export" caption="导出" quickKey="Ctrl+E" enabled='false' onclick="beforeExport();"></div>
    <!-- <div name="printHz" type="print" caption="打印回执" quickKey="Ctrl+Y" enabled='false' onclick="printHz();"></div> -->
	<div name="download" type="download" caption="下载导入模版" enabled='true' onclick="downloadEX();"></div>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- 	<script type="text/javascript" src="/wsbs/pages/layout/layout3/cacheAdapter.js"></script> -->
	<script type="text/javascript" src="/sb/sb000/sbczsmcontrol.js"></script>
	<script type="text/javascript">
	
		
		
		
	</script>
</head>
<body >
	<div name="jspt_operatdesc_button" type="save" caption="操作规范" quickKey="" 
		onclick="operatDesc();" isShow="false"></div>
</body>
</html>

	
</div>

		
<script languange="JavaScript">
var TYSL_TOOLBAR_JSOBJ = (function () {
	var _COMMON_BYSL_BUTTON=false;//是否添加不予受理按钮
	var _COMMON_BZNR_BUTTON=false;//是否添加补证内容按钮
	var _COMMON_SL_BUTTON=false;//是否添加受理按钮
	var toolbarName = ""//页面toolbar名称
	var byslButton = null;//不予受理按钮对象
	var bznrButton = null;//补证内容按钮对象
	var slButton = null;//受理按钮对象
	var djxh = "";
	var lcswsxDm = "";
	var slswsxDm = "";
	var lcslidVar = "";
	var ywwsuuidVar = "";
	var swsxDm = "";
	setTimeout(function(){ 
		if(typeof pc != "undefined"){//当pc不为未定义时，说明页面已经加载完毕
			var body = document.body;
            if($chk(body)){
            	var toolbarDiv = $(body).getElements('div[sword=SwordToolBar]');
            	if($chk(toolbarDiv)&&$chk(toolbarDiv[0])){
                    toolbarName = toolbarDiv[0].get('name');
                     _ADD_COMMON_BUTTON();
                 }
              }
		}else{
			setTimeout(arguments.callee, 10); 
		}
	},10);
	function _ADD_COMMON_BUTTON() {
		var toolBar = $w(toolbarName);
		if(_COMMON_BYSL_BUTTON){
	   		var obj = new Element("div",{//创建按钮定义div
	   			name:"__bysl",
	   			pclass:"delete",
	   			caption:"不予受理(E)",
	   			enabled:'false'
	   		});
	   		byslButton = _CREAT_BUTTON(obj,toolBar);	//创建按钮对象
        	byslButton.addEvent("click",function(e) {//添加点击事件
        		if(e.target.getParent().get('enabled')=='false') {
        			return;
        		}
        		bysl();
        	}.bind(this));
		}
		if(_COMMON_BZNR_BUTTON){
			var obj = new Element("div",{//创建按钮定义div
	   			name:"__bznr",
	   			pclass:"ticket",
	   			caption:"补正内容(R)",
	   			enabled:'false'
	   		});
	   		bznrButton = _CREAT_BUTTON(obj,toolBar);	//创建按钮对象
        	bznrButton.addEvent("click",function(e) {//添加点击事件
        		if(e.target.getParent().get('enabled')=='false') {
        			return;
        		}
        		bznr();
        	}.bind(this));
		}
		if(_COMMON_SL_BUTTON){
			var obj = new Element("div",{//创建按钮定义div
	   			name:"__sl",
	   			pclass:"inspect",
	   			caption:"打印受理通知书(Q)",
	   			enabled:'false'
	   		});
	   		slButton = _CREAT_BUTTON(obj,toolBar);	//创建按钮对象
        	slButton.addEvent("click",function(e) {//添加点击事件
        		if(e.target.getParent().get('enabled')=='false') {
        			return;
        		}
        		sl();
        	}.bind(this));
		}
        window.addEvent('keydown', function(e) {//给按钮添加快捷键
        	var event = new Event(e);
        	if(event.alt&&event.code=="69"){
           		if($chk(byslButton))byslButton.fireEvent('click');
        	}else if(event.alt&&event.code=="82"){
        		if($chk(bznrButton))bznrButton.fireEvent('click');
        	}else if(event.alt&&event.code=="81"){
        		if($chk(slButton))slButton.fireEvent('click');
        	}
        }.bind(this));  	
   	}
   	function _CREAT_BUTTON(obj,toolBar){
        var container = toolBar.pNode().getElement("div[name='container']");
        var box = container.getElement("div[name='box']");
        var button = toolBar.creatDefualtButton(
                   obj, obj.get('name'), null,
                   obj.get("pclass"),
                   obj.get("caption"),
                   obj.get("enabled"),"true");
          box.adopt(button);
          return button;
   	}
   	function _SET_DATA(xh,lcswsx,slswsx,lcslid,ywwsuuid, swsx){
	   	djxh = xh;
		lcswsxDm = lcswsx;
		slswsxDm = slswsx;
		lcslidVar = lcslid;
		ywwsuuidVar = ywwsuuid;
		swsxDm = swsx;
   	}
   	function bysl(){
   		var queryBtn = pc.create('SwordSubmit');
   		queryBtn.pushData('djxh',djxh);
		queryBtn.pushData('lcswsxDm',lcswsxDm);
		queryBtn.pushData('slswsxDm',slswsxDm);
		queryBtn.pushData('swsxDm',swsxDm);
		queryBtn.pushData('tzszlDm',"03");
   		if (typeof TYSL_YCJK_JSOBJ != "undefined") {
   			queryBtn.pushData('byslly', TYSL_YCJK_JSOBJ.getJkxmInfo());
   		}
   		queryBtn.pushData('lcslid', lcslidVar);
   		queryBtn.pushData('ywwsuuid', ywwsuuidVar);
   		queryBtn.pushData("dyfs", "TYSL_BYSL"); //统一受理调用公共打印框架时塞入此值由框架特殊处理
   		queryBtn.setCtrl('GY004PrintCtrl_initView');
   		swordOpenWin("", queryBtn);
   	}
   	function bznr(){
   		var queryBtn = pc.create('SwordSubmit');
   		queryBtn.pushData('djxh',djxh);
		queryBtn.pushData('lcswsxDm',lcswsxDm);
		queryBtn.pushData('slswsxDm',slswsxDm);
		queryBtn.pushData('swsxDm',swsxDm);
		queryBtn.pushData('tzszlDm',"02");
   		if (typeof TYSL_YCJK_JSOBJ != "undefined") {
   			queryBtn.pushData('byslly', TYSL_YCJK_JSOBJ.getJkxmInfo());
   		}
   		queryBtn.pushData('lcslid', lcslidVar);
   		queryBtn.pushData('ywwsuuid', ywwsuuidVar);
   		queryBtn.pushData("dyfs", "TYSL_BZNR"); //统一受理调用公共打印框架时塞入此值由框架特殊处理
   		queryBtn.setCtrl('GY004PrintCtrl_initView');
   		swordOpenWin("", queryBtn);
   	}
   	function sl(){
   		var queryBtn = pc.create('SwordSubmit');
   		queryBtn.pushData('djxh',djxh);
		queryBtn.pushData('lcswsxDm',lcswsxDm);
		queryBtn.pushData('slswsxDm',slswsxDm);
		queryBtn.pushData('swsxDm',swsxDm);
		queryBtn.pushData('tzszlDm',"01");
   		if (typeof TYSL_YCJK_JSOBJ != "undefined") {
   			queryBtn.pushData('byslly', TYSL_YCJK_JSOBJ.getJkxmInfo());
   		}
   		queryBtn.pushData('lcslid', lcslidVar);
   		queryBtn.pushData('ywwsuuid', ywwsuuidVar);
   		queryBtn.pushData("dyfs", "TYSL_SL"); //统一受理调用公共打印框架时塞入此值由框架特殊处理
   		queryBtn.setCtrl('GY004PrintCtrl_initView');
   		swordOpenWin("", queryBtn);
   	}
   	
	return {
	 	enableBysl : function(){
	 		if($chk(toolbarName)&&$w(toolbarName)){//存在该toolbar
	 			if(byslButton)$w(toolbarName).setEnabled("__bysl");
	 		}
	 	},
	 	disableBysl : function(){
	 		if($chk(toolbarName)&&$w(toolbarName)){//存在该toolbar
	 			if(byslButton)$w(toolbarName).setDisabled("__bysl");
	 		}
	 	},
	 	enableBznr : function(){
	 		if($chk(toolbarName)&&$w(toolbarName)){//存在该toolbar
	 			if(bznrButton)$w(toolbarName).setEnabled("__bznr");
	 		}
	 	},
	 	disableBznr : function(){
	 		if($chk(toolbarName)&&$w(toolbarName)){//存在该toolbar
	 			if(bznrButton)$w(toolbarName).setDisabled("__bznr");
	 		}
	 	},
	 	enableSl : function(){
	 		if($chk(toolbarName)&&$w(toolbarName)){//存在该toolbar
	 			if(slButton)$w(toolbarName).setEnabled("__sl");
	 		}
	 	},
	 	disableSl : function(){
	 		if($chk(toolbarName)&&$w(toolbarName)){//存在该toolbar
	 			if(slButton)$w(toolbarName).setDisabled("__sl");
	 		}
	 	},
	 	setData : function(xh,lcswsx,slswsx,lcslid,ywwsuuid, swsxDm){
	 		_SET_DATA(xh,lcswsx,slswsx,lcslid,ywwsuuid, swsxDm);
	 		TYSL_TOOLBAR_JSOBJ.enableBysl();
	 		TYSL_TOOLBAR_JSOBJ.enableBznr();
	 		TYSL_TOOLBAR_JSOBJ.enableSl();
	 		//DZDA_JSOBJ.init(lcswsx,slswsx);
	 		//DZDA_JSOBJ.setData(lcslid);
	 	},
	 	_setData : function(xh,lcswsx,slswsx,lcslid,ywwsuuid, swsxDm){
	 		_SET_DATA(xh,lcswsx,slswsx,lcslid,ywwsuuid, swsxDm);
	 		TYSL_TOOLBAR_JSOBJ.enableBysl();
	 		TYSL_TOOLBAR_JSOBJ.enableBznr();
	 		TYSL_TOOLBAR_JSOBJ.enableSl();
	 	}
	}
}());	
</script>
<script language="javascript" type="text/javascript" src="../../gy/tysl/tyslComm/tysl_saveSxslxx.js"></script>	

		<div id="yhssb_div">
			<div sword="SwordForm" name="nsrxxForm" caption="纳税人信息" panel="true"
				noNextEvent="toGrid();" userdefine="true" vType="fldiv"
				onFinish="addEventForDate()">
				<table class="tab_form" border="0" cellpadding="0" cellspacing="0">
					<colgroup>
						<col style="width: 14%"></col>
						<col style="width: 20%"></col>
						<col style="width: 14%"></col>
						<col style="width: 20%"></col>
						<col style="width: 12%"></col>
						<col style="width: 20%"></col>
					</colgroup>
					<tr>
						<th style="text-align: right;"><span class="red">*</span>
							纳税人识别号</th>
						<td>
							<div name="nsrsbh" type="text" onkeyup="queryNsrxx();"
								rule="must" maxlength="21" disable="true"></div>
						</td>
						<th style="text-align: right;">纳税人名称</th>
						<td>
							<div name="nsrmc" type="text" disabled="true"></div>
						</td>
						<th style="text-align: right;"><span class="red">*</span>
							申报日期</th>
						<td>
							<div name="sbrq1" type="date" rule="must" onchange="checkSbrq();"></div>
						</td>
					</tr>
					<tr>
						<th style="text-align: right;"><span class="red">*</span>
							所属时期起</th>
						<td style="border-right: none;">
							<div name="skssqq" type="date" rule="must" returnRealValue="true"
								onChange="changeSsqq()"></div>
						</td>
						<th style="text-align: right;"><span class="red">*</span>
							所属时期止</th>
						<td style="border-left: none">
							<div name="skssqz" type="date" rule="must" returnRealValue="true"
								onChange="checkyhsSkssqz();"></div>
						</td>
						<th style="text-align: right;"><span class="red">*</span>
							申报类型</th>
						<td>
							<div name="sblx" type="select" rule="must" defValue="11"
								onChange="changeSblx();" defIndex=0 disable="true">
								<div code="11" caption="正常申报"></div>
								<div code="21" caption="纳税人自行补正"></div>
							</div>
						</td>
					</tr>
					<tr>
						<th><span class="red">*</span>纳税人类型</th>
						<td>
							<div name="nsrlx" type="radio" defValue="0,0" disable=true>
								<div code="0" caption="单位"></div>
								<div code="1" caption="个人"></div>
							</div>
						</td>
						<th>登记注册类型</th>
						<td>
							<div name="djzclxDm" type="select" dataname="DM_DJ_DJZCLX"
								disable=true></div>
						</td>
						<th>所属行业</th>
						<td>
							<div name="hyDm" type="pulltree" treename='DM_GY_HY'
								selectrule="leaf"></div>
						</td>
					</tr>
					<tr>
						<th><span class="red">*</span>身份证件类型</th>
						<td>
							<div name="sfzjlxDm" caption="证件种类" type="select" rule="must"
								submitcontent="{code}" popdisplay="{code}|{caption}"
								dataname="DM_GY_SFZJLX" x="15%" disable="true"></div>
						</td>
						<th><span class="red">*</span>身份证件号码</th>
						<td>
							<div name="sfzjhm" type="text" rule="must_length;0,30"></div>
						</td>
						<th>联系方式</th>
						<td>
							<div name="lxdh" type="text" maxlength="60"></div>
						</td>
					</tr>
					<tr id="zrrTR1" style="display: none;">
						<th><span class="red">*</span>行政区划</th>
						<td colspan="2">
							<div name="xzqhszDm" type="pulltree" selectrule="leaf"
								popdisplay="{code}|{caption}" selectRealKey="code"
								inputWidth="100%" width="300px" onSelectChange="changeXzqh();"></div>
						</td>
						<th><span class="red">*</span>街道乡镇</th>
						<td colspan="2">
							<div name="jdxzDm" type="select" dataname="DM_GY_JDXZ"
								dataFilter="jdxzFilter();" popdisplay="{code}|{caption}"
								edit="true"></div>
						</td>
					</tr>
					<tr id="zrrTR2" style="display: none;">
						<th><span class="red">*</span>主管税务科所分局</th>
						<td colspan="2">
							<div name="zgswskfjDm" type="pulltree" treename='zgswskfjDm'
								selectrule="leaf"
								onNodeClick="changeZgswskfjDm('nsrxxForm','zgswskfjDm');"></div>
						</td>
						<th><span class="red">*</span>隶属关系</th>
						<td colspan="2">
							<div name="dwlsgxDm" type="select" dataname="DM_GY_DWLSGX"></div>
						</td>
					</tr>
					<tr>
						<th><span class="red">*</span>是否适用增值税小规模纳税人减征优惠</th>
						<td>
							<div name="bqsfsyxgmyhzc" type="select" onChange="zzsxgmnsr()"
								rule="must">
								<div code="Y" caption="是"></div>
								<div code="N" caption="否"></div>
							</div>
						</td>
						<th>减免税代码</th>
						<td>
							<div name="phjmxzDm" type="select" caption="减免税代码"
								dataName="phjmxzDmList" disable="true" submitcontent="{code}"
								popdisplay="{code}|{caption}"></div>
						</td>
						<th>增值税小规模纳税人享受减征比例（%）</th>
						<td>
							<div name="phjzbl" type="text" disable="true"></div>
						</td>
					</tr>
					<tr style="display: none;">
						<th colspan="2">普惠减免税务事项</th>
						<td>
							<div name="phjmswsxDm" type="text"></div>
						</td>
					</tr>
					<tr id="zrrTR3" style="display: none;">
						<th>纳税期限</th>
						<td>
							<div name="nsqxDm" caption="纳税期限" type="select" x="15%"
								onChange="checkYhsRdInfonsqx();">
								<div code="06" caption="月"></div>
								<div code="08" caption="季"></div>
								<div code="10" caption="年"></div>
								<div code="11" caption="次"></div>
							</div>
						</td>
						<td colspan="4"></td>
					</tr>
				</table>
			</div>
			


<div sword="SwordGrid" name="flzlGrid" caption="附送资料" autoHeight="false"
	checkMoudle="false" fenye="false" dataX="100%"
	onAfterCreateCell="SwordGrid_onAfterCreateCell_flzlGrid()" dataY="200"   style="display: none"
	align="center" >
	<div name="flzlmc" caption="材料列表" type="label" x="60%"></div>
	<div name="sfbb" caption="是否必报" type="select" x="10%" disable="true"
		onChange="select_onChange_sfbb()">
		<div code="1" caption="是"></div>
		<div code="2" caption="否"></div>
	</div>
	<div name="sfcy" caption="是否查验" type="select" x="10%" defValue="1,1"
		disable="true">
		<div code="1" caption="否"></div>
		<div code="2" caption="是"></div>
		<div code="3" caption="否"></div>
		<div code="4" caption="否"></div>
	</div>
	<div name="sfgd" caption="是否归档" type="select" x="10%" defValue="2,1"
		disable="true">
		<div code="1" caption="是"></div>
		<div code="2" caption="否"></div>
		<div code="3" caption="否"></div>
		<div code="4" caption="否"></div>
	</div>
	<div name="check" type="checkbox" x="8%" data='true' allChk='false' caption='选中' onClick="select_onClick_xz()" OnCheckedChanged="alert(1);"></div>
</div>
<script language="javascript" type="text/javascript" src="../../gy/tysl/tyslComm/tysl_flzl.js">
</script>




			<div sword="SwordForm" name="fzbtidform" caption="印花税申报表信息"
				panel="true" vType="fldiv" userdefine="true">
				<table border="0" cellpadding="0" cellspacing="0" id="fzbtid">
					<tr>
						<th rowspan=3 style="width: 10%; text-align: center"><span
							class="red">*</span>应税凭证名称</th>
						<th rowspan=2 style="width: 8%; text-align: center"><span
							class="red">*</span>计税金额或件数</th>
						<th colspan=2 style="width: 16%; text-align: center">核定征收</th>
						<th rowspan=2 style="width: 6%; text-align: center"><span
							class="red">*</span>适用税率</th>
						<th rowspan=2 style="width: 14%; text-align: center"><span
							class="red">*</span>本期应纳税额</th>
						<th rowspan=2 style="width: 8%; text-align: center"><span
							class="red">*</span>本期已缴税额</th>
						<th colspan=2 style="width: 20%; text-align: center"><span
							class="red">*</span>本期减免税额</th>
						<th rowspan=2 style="width: 8%; text-align: center">
							增值税小规模纳税人减征额</th>
						<th rowspan=2 style="width: 10%; text-align: center"><span
							class="red">*</span>本期应补（退）税额</th>
					</tr>
					<tr>
						<th style="text-align: center">核定依据</th>
						<th style="text-align: center">核定比例</th>
						<th style="text-align: center">减免性质代码</th>
						<th style="text-align: center">减免额</th>
					</tr>
					<tr>
						<th style="text-align: center">1</th>
						<th style="text-align: center">2</th>
						<th style="text-align: center">3</th>
						<th style="text-align: center">4</th>
						<th style="text-align: center">5=1*4+2*3*4</th>
						<th style="text-align: center">6</th>
						<th style="text-align: center">7</th>
						<th style="text-align: center">8</th>
						<th style="text-align: center">9</th>
						<th style="text-align: center">10=5-6-8-9</th>
					</tr>
				</table>
			</div>
			<div sword="SwordGrid" name="yhssbGrid" showHeader="false"
				showHJ="true" noNextEvent="toForm()" dataX="100%" fzbtId="fzbtid"
				fenye="false" cache="true" vType="fldiv" autoHeight="false">
				<div name="zspmDm" caption="应税凭证名称" type="select" isHjLabel="true"
					dataName='zspmList' x="10%" dataFilter="zsfsFilter()"
					onBeforeClick="loadZxpmList()" onChange="changeZspm();"
					popDisplay="{code}|{caption}"></div>
				<div name="jsje" caption="计税金额或件数" type="text" x="8%"
					rule="number(16,4)_contrast;>=0" css="text-align:right"
					format="{'type':'number','format':'#,##0.00'}"
					onblur='jisuanbqynybtse()'></div>
				<div name="hdzsHdde" caption="核定定额" type="text" x="8%" rule="number"
					format="{'type':'number','format':'#,##0.00'}"
					css="text-align:right" onblur='jisuanbqynybtse()'></div>
				<div name="hdzsHdbl" caption="核定比例" type="select" x="8%"
					dataFilter="hdblFilter()" css="text-align:right"
					onChange='jisuanbqynybtse()' dataName="hdList"></div>
				<div name="sysl" caption="适用税率" type="text" x="6%"
					rule="number_must"
					format="{'type':'number','format':'#,##0.00000'}"
					css="text-align:right" onblur='jisuanbqynybtse()' disable="true"></div>
				<div name="bqynse" caption="本期应纳税额" disable="true" type="text"
					x="14%" rule="number(18,6)_must" hj="true"
					format="{'type':'number','format':'#,##0.00'}"
					css="text-align:right"></div>
				<div name="bqyjse1" caption="本期已缴税额" type="text" x="8%"
					rule="number_must" format="{'type':'number','format':'#,##0.00'}"
					css="text-align:right" onblur='jisuanbqybtse1();' hj="true"></div>
				<div name="ssjmxzDm" caption="减免性质代码" x="13%" type="select"
					dataname="jmxzList" popdisplay="{code}|{caption}"
					onChange="changeJmxz();" dataFilter="jmxzFilter()"></div>
				<div name="jmse" caption="减免税额" type="text" x="7%"
					rule="number(16,2)_must" hj="true"
					format="{'type':'number','format':'#,##0.00'}"
					css="text-align:right" defValue="0.00" onblur='jisuanbqybtse();'></div>
				<div name="phjmse" caption="增值税小规模纳税人减征额" type="text" x="8%"
					rule="number(16,2)_must" hj="true"
					format="{'type':'number','format':'#,##0.00'}"
					css="text-align:right" defValue="0.00"
					onblur='jisuanafterphjmse();'></div>
				<div name="bqybtse" caption="本期应补（退）税额" disable="true" type="text"
					hj="true" x="10%" rule="number(18,6)_must" hj="true"
					format="{'type':'number','format':'#,##0.00'}"
					css="text-align:right"></div>
				<div name="yhpzuuid" show="false" caption="减免信息UUID" type="text"></div>
				<div name="rdpzuuid" show="false" caption="认定凭证UUID" type="text"></div>
				<div name="msg" show="false" caption="重复申报提示信息" type="text"></div>
				<div name="nsqxDm" show="false" caption="纳税期限代码" type="text"></div>
				<div name="jmsemr" show="false" caption="默认减免税额" type="text"></div>
				<div name="jmzlxDm" caption="减征类型" show="false" noView="true"
					type="text"></div>
				<div name="jmsl" caption="减免税率" show="false" noView="true"
					type="text"></div>
				<div name="jmed" caption="减免额度" show="false" noView="true"
					type="text"></div>
				<div name="jmfd" caption="减免幅度" show="false" noView="true"
					type="text"></div>
				<div name="hdlx2" caption="核定类型" show="false" noView="true"
					type="text"></div>
				<div name="yjse" caption="已缴税额" show="false" noView="true"
					type="text"></div>
				<div console="button" caption='增行' onclick="addRow();"></div>
				<div console="delete" caption='删行'></div>
			</div>
			<font color="red" style="font-size: 16px; line-height: 25px"
				id="sbgnxts">&nbsp;&nbsp;功能小贴士：<br> &nbsp;&nbsp;1.
					国家税务总局要求应补退税额不足1角的，免征印花税。应纳税额在一角以上的，其税额尾数不满五分的不计，满五分的按一角计算缴纳<br>
						&nbsp;&nbsp;2. 如果印花税不同征收品目的纳税期限不同（既有纳税期限按年，又有纳税期限按月的印花税征收品目认定信息），<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;先选择税款所属期起止（按月）将纳税期限按年的征收品目信息做删行处理，填写税款信息完毕后，点击保存申报<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;成功；再次进入印花税申报表，
								选择税款所属期起止（按年），将纳税期限按月的征收品目信息做删行处理，填写<br>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;税款信息完毕后，点击保存申报成功。 <br>
										&nbsp;&nbsp;3. 如果是按次申报印花税，所属期起止请选择申报日期当天。<br>
											&nbsp;&nbsp;4.
											如果不确定纳税期限，请通过涉税事项查询->税（费）种认定信息查询模块进行查看。如有疑问请和税务机关联系解决。 </font>
			<div sword="SwordForm" name="slxxForm" userdefine="true"
				vType="fldiv" caption="受理信息" panel="true">
				<table class="tab_form" border="0" cellpadding="0" cellspacing="0">
					<colgroup>
						<col style="width: 15%"></col>
						<col style="width: 15%"></col>
						<col style="width: 15%"></col>
						<col style="width: 15%"></col>
						<col style="width: 15%"></col>
						<col style="width: 25%"></col>
					</colgroup>
					<tr>
						<!--  <th style="text-align: right; padding-right: 6px">
							办税人
						</th>
						<td>
							<div name="bsr" type="text"></div>
						</td>-->
						<th>
							<span class="red">*</span>经办人
						</th>
						<td>
							<div name="dlr" type="text" rule="must" onChange="sfbl(this.value)"></div>
						</td>
						<!--  <th>
							代理人身份证件类型
						</th>
						<td>
							<div name="dlrsfzjzlDm1" type="select"
								dataName="DM_GY_SFZJLX" popDisplay="{code}|{caption}">
							</div>
						</td>-->
						<th>
							<span class="red">*</span>经办人身份证号
						</th>
						<td>
							<div name="dlrsfzjhm1" type="text" maxlength="30" rule="must"></div>
						</td>
						<th style="text-align: right;" colspan="2">
							
						</th>
					</tr>
					<tr>
						<th style="text-align: right; padding-right: 6px">
							代理机构统一社会信用代码
						</th>
						<td>
							<div name="dzdw" type="text" onBlur="checkdljgnsr();"></div>
						</td>
						<th style="text-align: right; padding-right: 6px">
							代理机构
						</th>
						<td>
							<div name="smrxm" type="text" disable="true"></div>
						</td>
						<th style="text-align: right;" colspan="2">
							
						</th>
					</tr>
					<tr>
						<th style="text-align: right; padding-right: 6px">
							受理人
						</th>
						<td>
							<div name="slr" type="text" disable="true"></div>
						</td>
						<th style="text-align: right; padding-right: 6px">
							受理日期
						</th>
						<td>
							<div name="slrq" type="date" disable="true"></div>
						</td>
						<th style="text-align: right; padding-right: 6px">
							受理税务机关
						</th>
						<td>
							<div name="slswjg" caption="受理税务机关" type="text" disable="true"></div>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div id="yqtfb_div" style="display: none">
			<iframe id="yqtfb_iframe" name="yqtfb_iframeName" src=""
				style="height: 525px; width: 100%" scrolling="auto"></iframe>
		</div>
	</div>
    
	<script language="javascript" type="text/javascript"
		src="/gy/ywpt/ywpt_zypz_gy.js"></script>
	<script language='javascript' type='text/javascript'
		src='../../sb/gy/phjmgy_js.js'></script>
	<script language="javascript" type="text/javascript"
		src="/gy/gy002/queryNsrxxByNsrsbhComm.js"></script>
	<script language="javascript" type="text/javascript"
		src="/sb/gy/sb_gy.js"></script>
	<script language='javascript' type='text/javascript'
		src='/gy/gy011/gyPrint.js'></script>
	<script language='javascript' type='text/javascript'
		src='../../sb/sb025/sb025_head.js'></script>
	<script language='javascript' type='text/javascript'
		src='../../sb/sb025/sb025_yhssb.js'></script>
	<div id="SwordCacheData"
		query="[{T:'DM_GY_ZSPM',W:'T.ZSXM_DM = 10111',WN:'zspmDm'},
			        {T:'DM_DJ_DJZCLX',WN:'djzclxDm'},
			        {T:'DM_GY_SFZJLX'},
			        {T:'DM_GY_DWLSGX',WN:'dwlsgxDm'}]"
		queryTree="[{T:'DM_GY_HY','PDM':'SJHY_DM','DM':'HY_DM','MC':'HYMC','WN':'hyDm','load':'lazy'}]"></div>
</body>
</html>
<%--<script type="text/javascript">
    $.ajax({             
            type: "post", //要用post方式                
            url: "sword.SB025YhssbCtrl_initView.aspx/GetJBXX",//方法所在页面和方法名
            data: "",
            contentType: "application/json; charset=utf-8",    
            dataType: "json",    
            success: function(data) {                   
                 console.log(data);
            },
            error: function(err) {    
              //  alert(err);    
            }    
        });
</script>--%>
<div id="SwordPageData"  style='display:none' data='{"data":[{"name":"nsrxxForm","data":{"bsryddh":{"value":"18907875406"},"tzze":{"value":"3000000.0"},"zgswjDm":{"value":"14507030000"},"cyrs":{"value":"3.0"},"gszgswjDm":{"value":""},"cwfzrxm":{"value":"李婷梅"},"wz":{"value":""},"zcdlxdh":{"value":"13307778667"},"lsswdjyxqz":{"value":""},"djxh":{"value":"10114507010114122457"},"bsrlxdh":{"value":"18907875406"},"kyslrq":{"value":"2017-08-18 00:00:00"},"zzjglxDm":{"value":"1"},"bzfsDm":{"value":"3"},"bsrdzxx":{"value":"3425882152@qq.com"},"lsswdjyxqq":{"value":""},"yhsjnfsDm":{"value":""},"zsxmcxbzDm":{"value":""},"ssdabh":{"value":"91450703MA5LB89JXN"},"hyDm":{"value":"5219"},"nsrfyhyxxList":{"value":"[]"},"zzlxDm":{"value":"80"},"scjyqxq":{"value":"2017-08-18 00:00:00"},"fddbrsfzjhm":{"value":"342225198011164444"},"cwfzryddh":{"value":"18907875406"},"fddbrsfzjlxDm":{"value":"201"},"kzztdjlxDm":{"value":"1110"},"gjhdqszDm":{"value":""},"gytzbl":{"value":"0.0"},"slswjg":{"value":"14507031000"},"xgrDm":{"value":"54507980121"},"gdgrs":{"value":"0.0"},"scjydlxdh":{"value":"13307778667"},"shxydm":{"value":"91450703MA5LB89JXN"},"fjmqybz":{"value":"N"},"scjydzxzqhszDm":{"value":"450703"},"ywzcdz":{"value":""},"scjyqxz":{"value":"2099-01-01 00:00:00"},"bsrxm":{"value":"李婷梅"},"bsrsfzjzlDm":{"value":"201"},"gdghlxDm":{"value":"1"},"cwfzrdzxx":{"value":"3425882152@qq.com"},"nsrbm":{"value":""},"pzsljglxDm":{"value":"01"},"dkdjywrsbh":{"value":"91450703MA5LB89JXN"},"slrq":{"value":"<%=tbrq %> 17:28:43"},"swdlrnsrsbh":{"value":""},"zcdzxzqhszmc":{"value":"钦北区"},"kjzdzzDm":{"value":"102"},"bsr":{"value":"刘荣"},"nsrzgswjgxxList":{"value":"[gov.gt3.vo.nsrgl.dj.general.DJNsrzgswjgxxVO@6584cd32]"},"lrrDm":{"value":"24507000139"},"gszgswskfjDm":{"value":""},"sfzjlxDm":{"value":"201"},"jyfw":{"value":"文化办公用品、办公设备、机电设备、日用百货、家用电器、五金交电、电子产品、电讯器材、电线电缆、电动工具、仪器仪表、通讯器材、通讯设备、金属材料、管道配件、制冷设备、服装服饰、鞋帽、床上用品、劳防用品、酒店用品、卫生洁具、打印设备、电脑耗材、健身器材、体育用品、消防器材、压缩机及配件、家具、轮胎、机油、汽车配件、酒类的销售；广告印刷服务（出版物印刷除外）。"},"wcjyhdssglzmbh":{"value":""},"sbrq":{"value":"<%=tbrq %>"},"djzclxmc":{"value":"<%=djzclx %>"},"pzzmhwjh":{"value":""},"djjgmc":{"value":""},"pzsljgmc":{"value":""},"zcdz":{"value":"钦州市永福西大街27号碧海盛世国际大厦1栋2单元508房"},"zgswjmc":{"value":"国家税务总局钦州市钦北区税务局"},"zgswskfjDm":{"value":"14507031000"},"zrrBz":{"value":"N"},"nsrztDm":{"value":"03"},"hhrs":{"value":"0.0"},"hjszd":{"value":""},"fddbrdzxx":{"value":"196350143@qq.com"},"zrrtzbl":{"value":"0.0"},"ssglyDm":{"value":"24507000084"},"gdslxDm":{"value":"1"},"scjydyzbm":{"value":"535099"},"swdjblbz":{"value":"Y"},"nsrsbh":{"value":"<%=nsrsbh %>"},"slr":{"value":"WSSB"},"bsrgddh":{"value":""},"jdxzDm":{"value":"450703003"},"djjgDm":{"value":"14527530700"},"cwfzrsfzjhm":{"value":"450721199911108181"},"tbrq1":{"value":"<%=tbrq %>"},"scjydz":{"value":"钦州市永福西大街27号碧海盛世国际大厦1栋2单元508房"},"kqccsztdjbz":{"value":"N"},"tbrq":{"value":"<%=tbrq %>"},"ynsrsbh":{"value":"91450703MA5LB89JXN"},"wjcyrs":{"value":"0.0"},"cwfzrsfzjzlDm":{"value":"201"},"nsrmc":{"value":"<%=nsrmc %>"},"nsrztlxDm":{"value":""},"swdlrlxdh":{"value":""},"fddbrgddh":{"value":""},"djrq":{"value":"2017-08-22 00:00:00"},"bsrsfzjhm":{"value":"450721199911108181"},"zzhm":{"value":"450703000127327"},"szgjdqnsrsbh":{"value":""},"djzclxDm":{"value":"150"},"fddbrsfzjlxmc":{"value":"居民身份证"},"whsyjsfjfxxdjbz":{"value":"N"},"zfjglxDm":{"value":"0"},"fddbryddh":{"value":"13307778667"},"nsrztmc":{"value":"正常"},"hsfsDm":{"value":"11"},"nsrywmc":{"value":""},"zcxs":{"value":""},"wztzbl":{"value":"0.0"},"zgswskfjmc":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"pzsljgDm":{"value":"450703000"},"sbrq1":{"value":"<%=tbrq %>"},"dwlsgxDm":{"value":"40"},"scjydzxzqhszmc":{"value":"钦北区"},"zzsjylb":{"value":"01"},"zzsqylxDm":{"value":"2"},"hymc":{"value":"其他综合零售"},"cwfzrgddh":{"value":""},"zczb":{"value":"3000000.0"},"kzztdjlxmc":{"value":"单位纳税人税务登记"},"hydm":{"value":"5219"},"swdlrmc":{"value":""},"gsdjxh":{"value":""},"skssqz":{"value":"<%=rqZ %>"},"zgbm":{"value":"国家税务总局钦州市钦北区税务局"},"kjrwrmc":{"value":"广西瑞佳荣达贸易有限公司"},"lrrq":{"value":"2017-08-22 16:25:56"},"skssqq":{"value":"<%=rqQ %>"},"ggrs":{"value":"0.0"},"fddbrxm":{"value":"刘荣"},"jdxzmc":{"value":"子材街道办事处"},"zcdyzbm":{"value":"535099"},"gykglxDm":{"value":""},"ssglymc":{"value":"张莹"},"ygznsrlxDm":{"value":"11"},"zzjgDm":{"value":"MA5LB89JX"},"pgjgDm":{"value":""},"swdlrdzxx":{"value":""},"hylb":{"value":"其他综合零售"},"zcdzxzqhszDm":{"value":"450703"},"xzqhszDm":{"value":"450703"}},"sword":"SwordForm"},{"name":"slxxForm","data":{"slswjgDm":{"value":"14507031000"},"slrDm":{"value":"000000dzswj"},"slrq":{"value":"2019-08-08"},"sqr":{"value":"李婷梅"},"slr":{"value":"WSSB"},"slswjg":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"fddbr":{"value":"刘荣"},"ssgly":{"value":"张莹"},"shrDm":{"value":"张莹"},"jbr":{"value":"WSSB"},"lxdh":{"value":""},"swjgmc":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"shrq":{"value":"<%=tbrq %>"},"slrxm":{"value":"WSSB"},"bsrxm":{"value":"刘荣"},"swdlrjbr":{"value":"WSSB"},"tpr":{"value":"李婷梅"}},"sword":"SwordForm"},{"name":"slrxxForm","data":{"slswjgDm":{"value":"14507031000"},"slrDm":{"value":"000000dzswj"},"slrq":{"value":"<%=tbrq %>"},"sqr":{"value":"李婷梅"},"slr":{"value":"WSSB"},"slswjg":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"fddbr":{"value":"刘荣"},"ssgly":{"value":"张莹"},"shrDm":{"value":"张莹"},"jbr":{"value":"WSSB"},"lxdh":{"value":""},"swjgmc":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"shrq":{"value":"2019-08-08"},"slrxm":{"value":"WSSB"},"bsrxm":{"value":"刘荣"},"swdlrjbr":{"value":"WSSB"},"tpr":{"value":"李婷梅"}},"sword":"SwordForm"},{"name":"fjxxForm","data":{"slswjgDm":{"value":"14507031000"},"slrDm":{"value":"000000dzswj"},"slrq":{"value":"2019-08-08"},"sqr":{"value":"李婷梅"},"slr":{"value":"WSSB"},"slswjg":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"fddbr":{"value":"刘荣"},"ssgly":{"value":"张莹"},"shrDm":{"value":"张莹"},"jbr":{"value":"WSSB"},"lxdh":{"value":""},"swjgmc":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"shrq":{"value":"2019-08-08"},"slrxm":{"value":"WSSB"},"bsrxm":{"value":"刘荣"},"swdlrjbr":{"value":"WSSB"},"tpr":{"value":"李婷梅"}},"sword":"SwordForm"},{"name":"xmslxxForm","data":{"slswjgDm":{"value":"14507031000"},"slrDm":{"value":"000000dzswj"},"slrq":{"value":"2019-08-08"},"sqr":{"value":"李婷梅"},"slr":{"value":"WSSB"},"slswjg":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"fddbr":{"value":"刘荣"},"ssgly":{"value":"张莹"},"shrDm":{"value":"张莹"},"jbr":{"value":"WSSB"},"lxdh":{"value":""},"swjgmc":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"shrq":{"value":"2019-08-08"},"slrxm":{"value":"WSSB"},"bsrxm":{"value":"刘荣"},"swdlrjbr":{"value":"WSSB"},"tpr":{"value":"李婷梅"}},"sword":"SwordForm"},{"name":"whfjxxForm","data":{"slswjgDm":{"value":"14507031000"},"slrDm":{"value":"000000dzswj"},"slrq":{"value":"2019-08-08"},"sqr":{"value":"李婷梅"},"slr":{"value":"WSSB"},"slswjg":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"fddbr":{"value":"刘荣"},"ssgly":{"value":"张莹"},"shrDm":{"value":"张莹"},"jbr":{"value":"WSSB"},"lxdh":{"value":""},"swjgmc":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"shrq":{"value":"2019-08-08"},"slrxm":{"value":"WSSB"},"bsrxm":{"value":"刘荣"},"swdlrjbr":{"value":"WSSB"},"tpr":{"value":"李婷梅"}},"sword":"SwordForm"},{"name":"slxxdyForm","data":{"slswjgDm":{"value":"14507031000"},"slrDm":{"value":"000000dzswj"},"slrq":{"value":"2019-08-08"},"sqr":{"value":"李婷梅"},"slr":{"value":"WSSB"},"slswjg":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"fddbr":{"value":"刘荣"},"ssgly":{"value":"张莹"},"shrDm":{"value":"张莹"},"jbr":{"value":"WSSB"},"lxdh":{"value":""},"swjgmc":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"shrq":{"value":"2019-08-08"},"slrxm":{"value":"WSSB"},"bsrxm":{"value":"刘荣"},"swdlrjbr":{"value":"WSSB"},"tpr":{"value":"李婷梅"}},"sword":"SwordForm"},{"name":"skssqq","value":"2019-07-01","type":""},{"name":"skssqz","value":"<%=rqZ %>","type":""},{"name":"zgswskfjDm","value":"14507031000","type":""},{"name":"djxh","value":"10114507010114122457","type":""},{"name":"djzclxDm","value":"159","type":""},{"name":"nsrxxReturn","data":{"bsryddh":{"value":"18907875406"},"tzze":{"value":"3000000.0"},"zgswjDm":{"value":"14507030000"},"cyrs":{"value":"3.0"},"gszgswjDm":{"value":""},"cwfzrxm":{"value":"李婷梅"},"wz":{"value":""},"zcdlxdh":{"value":"13307778667"},"lsswdjyxqz":{"value":""},"djxh":{"value":"10114507010114122457"},"bsrlxdh":{"value":"18907875406"},"kyslrq":{"value":"2017-08-18 00:00:00"},"zzjglxDm":{"value":"1"},"bzfsDm":{"value":"3"},"bsrdzxx":{"value":"3425882152@qq.com"},"lsswdjyxqq":{"value":""},"yhsjnfsDm":{"value":""},"zsxmcxbzDm":{"value":""},"ssdabh":{"value":"91450703MA5LB89JXN"},"hyDm":{"value":"5219"},"nsrfyhyxxList":{"value":"[]"},"zzlxDm":{"value":"80"},"scjyqxq":{"value":"2017-08-18 00:00:00"},"fddbrsfzjhm":{"value":"342225198011164444"},"cwfzryddh":{"value":"18907875406"},"fddbrsfzjlxDm":{"value":"201"},"kzztdjlxDm":{"value":"1110"},"gjhdqszDm":{"value":""},"gytzbl":{"value":"0.0"},"slswjg":{"value":"14507031000"},"xgrDm":{"value":"54507980121"},"gdgrs":{"value":"0.0"},"scjydlxdh":{"value":"13307778667"},"shxydm":{"value":"91450703MA5LB89JXN"},"fjmqybz":{"value":"N"},"scjydzxzqhszDm":{"value":"450703"},"ywzcdz":{"value":""},"scjyqxz":{"value":"2099-01-01 00:00:00"},"bsrxm":{"value":"李婷梅"},"bsrsfzjzlDm":{"value":"201"},"gdghlxDm":{"value":"1"},"cwfzrdzxx":{"value":"3425882152@qq.com"},"nsrbm":{"value":""},"pzsljglxDm":{"value":"01"},"dkdjywrsbh":{"value":"91450703MA5LB89JXN"},"slrq":{"value":"2019-08-08 17:28:43"},"swdlrnsrsbh":{"value":""},"zcdzxzqhszmc":{"value":"钦北区"},"kjzdzzDm":{"value":"102"},"bsr":{"value":"刘荣"},"nsrzgswjgxxList":{"value":"[gov.gt3.vo.nsrgl.dj.general.DJNsrzgswjgxxVO@6584cd32]"},"lrrDm":{"value":"24507000139"},"gszgswskfjDm":{"value":""},"sfzjlxDm":{"value":"201"},"jyfw":{"value":"文化办公用品、办公设备、机电设备、日用百货、家用电器、五金交电、电子产品、电讯器材、电线电缆、电动工具、仪器仪表、通讯器材、通讯设备、金属材料、管道配件、制冷设备、服装服饰、鞋帽、床上用品、劳防用品、酒店用品、卫生洁具、打印设备、电脑耗材、健身器材、体育用品、消防器材、压缩机及配件、家具、轮胎、机油、汽车配件、酒类的销售；广告印刷服务（出版物印刷除外）。"},"wcjyhdssglzmbh":{"value":""},"sbrq":{"value":"2019-08-08"},"djzclxmc":{"value":"<%=djzclx %>"},"pzzmhwjh":{"value":""},"djjgmc":{"value":""},"pzsljgmc":{"value":""},"zcdz":{"value":"钦州市永福西大街27号碧海盛世国际大厦1栋2单元508房"},"zgswjmc":{"value":"国家税务总局钦州市钦北区税务局"},"zgswskfjDm":{"value":"14507031000"},"zrrBz":{"value":"N"},"nsrztDm":{"value":"03"},"hhrs":{"value":"0.0"},"hjszd":{"value":""},"fddbrdzxx":{"value":"196350143@qq.com"},"zrrtzbl":{"value":"0.0"},"ssglyDm":{"value":"24507000084"},"gdslxDm":{"value":"1"},"scjydyzbm":{"value":"535099"},"swdjblbz":{"value":"Y"},"nsrsbh":{"value":"<%=nsrsbh %>"},"slr":{"value":"WSSB"},"bsrgddh":{"value":""},"jdxzDm":{"value":"450703003"},"djjgDm":{"value":"14527530700"},"cwfzrsfzjhm":{"value":"450721199911108181"},"tbrq1":{"value":"2019-08-08"},"scjydz":{"value":"钦州市永福西大街27号碧海盛世国际大厦1栋2单元508房"},"kqccsztdjbz":{"value":"N"},"tbrq":{"value":"2019-08-08"},"ynsrsbh":{"value":"91450703MA5LB89JXN"},"wjcyrs":{"value":"0.0"},"cwfzrsfzjzlDm":{"value":"201"},"nsrmc":{"value":"<%=nsrmc %>"},"nsrztlxDm":{"value":""},"swdlrlxdh":{"value":""},"fddbrgddh":{"value":""},"djrq":{"value":"2017-08-22 00:00:00"},"bsrsfzjhm":{"value":"450721199911108181"},"zzhm":{"value":"450703000127327"},"szgjdqnsrsbh":{"value":""},"djzclxDm":{"value":"159"},"fddbrsfzjlxmc":{"value":"居民身份证"},"whsyjsfjfxxdjbz":{"value":"N"},"zfjglxDm":{"value":"0"},"fddbryddh":{"value":"13307778667"},"nsrztmc":{"value":"正常"},"hsfsDm":{"value":"11"},"nsrywmc":{"value":""},"zcxs":{"value":""},"wztzbl":{"value":"0.0"},"zgswskfjmc":{"value":"国家税务总局钦州市钦北区税务局第二税务分局"},"pzsljgDm":{"value":"450703000"},"sbrq1":{"value":"2019-08-08"},"dwlsgxDm":{"value":"40"},"scjydzxzqhszmc":{"value":"钦北区"},"zzsjylb":{"value":"01"},"zzsqylxDm":{"value":"2"},"hymc":{"value":"其他综合零售"},"cwfzrgddh":{"value":""},"zczb":{"value":"3000000.0"},"kzztdjlxmc":{"value":"单位纳税人税务登记"},"hydm":{"value":"5219"},"swdlrmc":{"value":""},"gsdjxh":{"value":""},"skssqz":{"value":"2019-07-31"},"zgbm":{"value":"国家税务总局钦州市钦北区税务局"},"kjrwrmc":{"value":"广西瑞佳荣达贸易有限公司"},"lrrq":{"value":"2017-08-22 16:25:56"},"skssqq":{"value":"2019-07-01"},"ggrs":{"value":"0.0"},"fddbrxm":{"value":"刘荣"},"jdxzmc":{"value":"子材街道办事处"},"zcdyzbm":{"value":"535099"},"gykglxDm":{"value":""},"ssglymc":{"value":"张莹"},"ygznsrlxDm":{"value":"11"},"zzjgDm":{"value":"MA5LB89JX"},"pgjgDm":{"value":""},"swdlrdzxx":{"value":""},"hylb":{"value":"其他综合零售"},"zcdzxzqhszDm":{"value":"450703"},"xzqhszDm":{"value":"450703"}},"sword":"SwordForm"},{"name":"tsswjggzlx","value":"0","type":""},{"name":"wssbbz","value":"Y","type":""},{"name":"skselbz","value":"Y","type":""},{"data":[],"dataType":"json","sword":"SwordTree","name":"zgswskfjDm"},{"data":[{"caption":"钦北区","pcode":"450700","code":"450703"}],"dataType":"json","sword":"SwordTree","name":"xzqhszDm"},{"data":[{"caption":"市辖区","code":"450701000","xzqhDm":"450703"},{"caption":"钦北区","code":"450703000","xzqhDm":"450703"},{"caption":"长田街道办事处","code":"450703001","xzqhDm":"450703"},{"caption":"鸿亭街道办事处","code":"450703002","xzqhDm":"450703"},{"caption":"子材街道办事处","code":"450703003","xzqhDm":"450703"},{"caption":"大垌镇","code":"450703100","xzqhDm":"450703"},{"caption":"平吉镇","code":"450703101","xzqhDm":"450703"},{"caption":"青塘镇","code":"450703102","xzqhDm":"450703"},{"caption":"小董镇","code":"450703103","xzqhDm":"450703"},{"caption":"板城镇","code":"450703104","xzqhDm":"450703"},{"caption":"那蒙镇","code":"450703105","xzqhDm":"450703"},{"caption":"长滩镇","code":"450703106","xzqhDm":"450703"},{"caption":"新棠镇","code":"450703107","xzqhDm":"450703"},{"caption":"大直镇","code":"450703108","xzqhDm":"450703"},{"caption":"大寺镇","code":"450703109","xzqhDm":"450703"},{"caption":"贵台镇","code":"450703110","xzqhDm":"450703"},{"caption":"钦北区皇马工业园区","code":"450703400","xzqhDm":"450703"},{"caption":"大寺北部湾林木产业园区","code":"450703401","xzqhDm":"450703"}],"sword":"SwordSelect","dataName":"DM_GY_JDXZ"},{"data":[{"caption":"购销合同","ZSPM_DM":"101110101","code":"101110101"},{"caption":"加工承揽合同","ZSPM_DM":"101110102","code":"101110102"},{"caption":"建设工程勘察设计合同","ZSPM_DM":"101110103","code":"101110103"},{"caption":"建筑安装工程承包合同","ZSPM_DM":"101110104","code":"101110104"},{"caption":"财产租赁合同","ZSPM_DM":"101110105","code":"101110105"},{"caption":"货物运输合同(按运输费用万分之五贴花)","ZSPM_DM":"101110106","code":"101110106"},{"caption":"仓储保管合同","ZSPM_DM":"101110107","code":"101110107"},{"caption":"借款合同","ZSPM_DM":"101110108","code":"101110108"},{"caption":"财产保险合同","ZSPM_DM":"101110109","code":"101110109"},{"caption":"技术合同","ZSPM_DM":"101110110","code":"101110110"},{"caption":"产权转移书据","ZSPM_DM":"101110200","code":"101110200"},{"caption":"A种股票","ZSPM_DM":"101110301","code":"101110301"},{"caption":"B种股票","ZSPM_DM":"101110302","code":"101110302"},{"caption":"非交易转让股票A种股票","ZSPM_DM":"101110303","code":"101110303"},{"caption":"非交易转让股票B种股票","ZSPM_DM":"101110304","code":"101110304"},{"caption":"无偿划拨国有股权的股数","ZSPM_DM":"101110305","code":"101110305"},{"caption":"社保基金证券交易A种股票印花税","ZSPM_DM":"101110306","code":"101110306"},{"caption":"社保基金证券交易B种股票印花税","ZSPM_DM":"101110307","code":"101110307"},{"caption":"权利、许可证照","ZSPM_DM":"101110400","code":"101110400"},{"caption":"资金账簿","ZSPM_DM":"101110501","code":"101110501"},{"caption":"其他营业账簿","ZSPM_DM":"101110599","code":"101110599"},{"caption":"其他凭证","ZSPM_DM":"101119800","code":"101119800"},{"caption":"滞纳金","ZSPM_DM":"101119901","code":"101119901"},{"caption":"罚款","ZSPM_DM":"101119902","code":"101119902"},{"caption":"利息收入","ZSPM_DM":"101119903","code":"101119903"}],"sword":"SwordSelect","dataName":"zspmList"},{"name":"cszfj","value":"N","type":""},{"name":"csz","value":"N","type":""},{"name":"qtpzCs","value":"N","type":""},{"name":"gzsekg","value":"N","type":""},{"name":"yhskg","value":"N","type":""},{"name":"yhsnsqxkg","value":"N","type":""},{"name":"lcswsxDm","value":"LCSXA061001009","type":""},{"name":"diqu","value":null,"type":""},{"name":"htmdyzkg","value":"Y","type":""},{"name":"drxzdrmbkg","value":"Y","type":""},{"name":"nmxtcs","value":"N","type":""},{"name":"nmg_qz","value":"N","type":""},{"name":"skssqqNew","value":null,"type":""},{"name":"skssqzNew","value":null,"type":""},{"name":"isEnableExportButton","value":"Y","type":""},{"name":"xzcs","value":"N","type":""},{"name":"gwssswjg","value":"14507031000","type":""},{"name":"sessionID","value":"a5c149fc3e7441f0921ba31eefef0e71","type":""}]}'></div>
