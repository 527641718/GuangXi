﻿var cxsjQ; //查询时间起;如2014-01-01
var cxsjZ; //查询时间止;如2014-02-28
var nsrsbh;
var bzList = [];
//启动时加载
$(function () {
    search();
    //定时自动设置面板宽度
    autoWidth();
    loadNsrxx(); //加载纳税人信息（包括其他各种数据）
});

//首页跳转自动查询
function search() {
    var ssqq = request("ssqq");
    var ssqz = request("ssqz");
    if (ssqq && ssqz) {
        $("#cxsjQ").val(ssqq.substring(0, 7));
        $("#cxsjZ").val(ssqz.substring(0, 7));
        loadSljsjjList();
    }
}

//定时自动设置宽度(0.3秒一次)
function autoWidth() {
    $("#cxtjDiv").width($("#cxtjDiv").parent().width());
    $("#cxjgDiv").width($("#cxjgDiv").parent().width());
    setTimeout(autoWidth, 300);
}

//加载纳税人信息（包括其他各种数据）
function loadNsrxx() {
    $.postJSON("/WSSBSL/do_index_Index_loadIndexNsrxx.ashx", function (data) {
        if (data && data.length > 0) {
            nsrsbh = data[2];
        } else {
            window.top.alert('消息', "获取纳税人信息出错！", 'error');
        }
    });
}

//隐藏查询条件和查询结果
function hideQuery() {
    $("#cxtjDiv").hide();
    $("#cxjgDiv").hide();
    $("#lbt_toHide").hide();
    $("#lbt_toShow").show();
    iframeAutoSize();
}

//显示查询条件和查询结果
function showQuery() {
    $("#cxtjDiv").show();
    $("#cxjgDiv").show();
    $("#lbt_toHide").show();
    $("#lbt_toShow").hide();
    iframeAutoSize();
}

//窗口高度自适应
function iframeAutoSize() {
    var headHeight = 170;
    if ($("#cxtjDiv").is(":hidden")) {
        headHeight = 40;
    }
    var tab = getSelectedTab();
    if (tab) {
        var id = tab.panel('options').id;
        $("#mainiframe" + id).height(0);
        var mainheight = $(window).height() - headHeight;
        $("#mainiframe" + id).height(mainheight);
    }
}

//查询申报信息列表
function loadSljsjjList() {
    var cxsjQ_m = $("#cxsjQ").val(); //如：2014-01
    var cxsjZ_m = $("#cxsjZ").val(); //如：2014-02
    var reg = /\d{4}-\d{2}/;
    if (cxsjQ_m == "" || cxsjZ_m == "") {
        window.top.alert("错误", "查询日期起和查询日期止不能为空，请选择日期后再查询！", "error");
    } else if (!reg.test(cxsjQ_m) || !reg.test(cxsjZ_m)) {
        window.top.alert("错误", "输入日期格式不正确，请输入类似“2014-06”的格式！", "error");
    } else if (parseInt(cxsjZ_m.substring(0, 4) + "" + cxsjZ_m.substring(5, 7), 10) < parseInt(cxsjQ_m.substring(0, 4) + "" + cxsjQ_m.substring(5, 7), 10)) {
        window.top.alert("错误", "查询日期起不能大于查询日期止！", "error");
    } else {
        cxsjQ = cxsjQ_m + "-01"; //如：2014-01-01
        var date = new Date(cxsjZ_m.substring(0, 4), cxsjZ_m.substring(5, 7), 0);
        cxsjZ = cxsjZ_m + "-" + date.getDate();

        $.postJSON("/WSSBSL/do_sljsjj_Sljsjj_loadSljsjjList.ashx", {
            "cxsjQ": cxsjQ,
            "cxsjZ": cxsjZ
        },

		function (data, textStatus) {
		    if (data && data.length > 0) {
		        if (data[0] == "Y") {
		            showDqysbList(data[1]); //显示列表
		            closeAllTab(); //清空报表展示区内容
		        } else {
		            window.top.alert('消息', data[1], 'warning');
		        }
		    }
		});
    }
}

//显示当期应申报信息列表
function showDqysbList(list) {
    $("#sbxxList").children(0).children(":gt(0)").remove();
    var lis = [];
    bzList = [];
    if (list && list.length > 0) {
        for (var i = 0; i < list.length; i++) {
            bzList.push(list[i].bz);
            lis.push('<tr bgcolor="#FFFFFF">');
            lis.push('<td height="15" align="center" ><a href="javascript:;" onclick="chooseTr(this);showReport(\'' + list[i].dataFromBz + '\',\'' + list[i].pzxh + '\',\'' + list[i].sbuuid + '\',\'' + list[i].ssqq + '\',\'' + list[i].ssqz + '\',\'' + list[i].userYSBQCId + '\',\'' + list[i].YSBQCId + '\',\'' + list[i].HappenDate + '\')">' + list[i].bbzlmc + '</a></td>');
            lis.push('<td height="15" align="center" >' + list[i].ssqq + '</td>');
            lis.push('<td height="15" align="center" >' + list[i].ssqz + '</td>');
            lis.push('<td height="15" align="center" >' + list[i].sbzt + '</td>');
            lis.push('<td height="15" align="center" >' + list[i].sbrq + '</td>');
            lis.push('<td height="15" align="center" >' + list[i].sblx + '</td>');
            lis.push('<td height="15" align="center" ><a href="javascript:;" onclick="showBz(' + i + ')">' + getStringByLength(list[i].bz, 8) + '</a></td>');
            lis.push('</tr>');
        }
    } else {
        lis.push('<tr bgcolor="#FFFFFF"><td height="20" colspan="11" align="center">无记录！</td></tr>');
    }
    $("#sbxxList").append(lis.join(""));
}

//显示备注信息
function showBz(xh) {
    window.top.alert('备注信息', bzList[xh], 'info');
}

//某行高亮
function chooseTr(obj) {
    $("#sbxxList").children().eq(0).find("tr").each(function (i) {
        if ($(this).index() > 0) {
            $(this).css("background-color", "#FFFFFF");
        }
    });
    $(obj).parent().parent().css("background-color", "#FBEC88");
}

//显示报表
function showReport(dataFromBz, pzxh, sbuuid, ssqq, ssqz, userYSBQCId, YSBQCId, HappenDate) {
    closeAllTab();
    var isTbBz = "1"; //是否填报标志：1-查询报表
    var sbzt = "1";
    if (typeof (nsrsbh) == "undefined") {
        window.top.alert('消息', "无法获取必要参数！显示报表失败！请刷新页面重试！", 'warning');
    } else {
        addTab("水利建设基金申报表", "/WSSBSL/reportJsp/showReport_sljsjj.aspx?raq=/sljsjj/sljsjj.raq&nsrsbh=" + nsrsbh + "&isTbBz=" + isTbBz + "&dataFromBz=" + dataFromBz + "&pzxh=" + pzxh + "&ssqq=" + ssqq + "&ssqz=" + ssqz + "&sbuuid=" + sbuuid + "&userYSBQCId=" + userYSBQCId + "&YSBQCId=" + YSBQCId + "&HappenDate=" + HappenDate + "&sbzt=" + sbzt, false);
    }
}

//打印方式一
function javaPrint() {
    doCurrTabFun("javaPrint()");
}

//打印方式二
function winPrint() {
    doCurrTabFun("winPrint()");
}

//打印方式三
function lodopPrint() {
    var tab = getSelectedTab();
    if (tab) {
        doCurrTabFun("hideInput()"); //为打印而隐藏输入框
        var id = tab.panel('options').id;
        var htmlTxt = window.frames["mainiframe" + id].document.documentElement.outerHTML;
        var bbmc = doCurrTabFun("getBbmc()"); //获取当前页面的报表名称
        window.top.doLodopPrint(bbmc, htmlTxt);
    }
}

//导出excel 
function saveAsExcel() {
    doCurrTabFun("saveAsExcel()");
}

//导出pdf 
function saveAsPdf() {
    doCurrTabFun("saveAsPdf()");
}
//执行当前TAB页面下的方法
function doCurrTabFun(f) {
    var tab = $('#tabList').tabs('getSelected');
    var id = tab.panel('options').id;
    var str = 'window.frames["mainiframe' + id + '"].' + f;
    return eval(str);
}