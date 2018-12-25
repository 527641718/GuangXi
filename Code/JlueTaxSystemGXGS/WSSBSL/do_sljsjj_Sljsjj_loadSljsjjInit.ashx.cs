﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using JlueTaxSystemGXGS.Code;
using System.Text;
using System.Web.SessionState;
using Newtonsoft.Json;

namespace JlueTaxSystemGXGS.WSSBSL
{
    /// <summary>
    /// do_sljsjj_Sljsjj_loadSljsjjInit 的摘要说明
    /// </summary>
    public class do_sljsjj_Sljsjj_loadSljsjjInit : IHttpHandler,IReadOnlySessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            //String json = File.ReadAllText(context.Server.MapPath("/WSSBSL/JSON/do_sljsjj_Sljsjj_loadSljsjjInit.json"));
            //context.Response.ContentType = "application/json";
            //context.Response.Write(json);
            String resjson = File.ReadAllText(context.Server.MapPath("/WSSBSL/JSON/do_sljsjj_Sljsjj_loadSljsjjInit.json"));
            GTXResult userysbqc = GTXMethod.GetSCYSBQC();
            if (userysbqc.IsSuccess)
            {
                StringBuilder reportidstr = new StringBuilder();
                List<GTXGXUserYSBQC> userysbqclist = JsonConvert.DeserializeObject<List<GTXGXUserYSBQC>>(userysbqc.Data.ToString());
                if (userysbqclist.Count > 0)
                {
                    foreach (GTXGXUserYSBQC item in userysbqclist)
                    {
                        if (item.reportid == "bbtb_sljsjj")
                        {
                            resjson = resjson.Replace("@@sbqq", Convert.ToDateTime(item.SBQQ).ToString("yyyy-MM-dd HH:mm:ss"))
                                .Replace("@@sbqz", Convert.ToDateTime(item.SBQZ).ToString("yyyy-MM-dd HH:mm:ss"))
                                .Replace("@@skssq", Convert.ToDateTime(item.SKSSQQ).ToString("yyyyMM"))
                                .Replace("@@HappenDate", Convert.ToDateTime(item.HappenDate).ToString("yyyy-MM-dd"))
                                .Replace("@@nsrsbh", CurrentUser.GetInstance().GetCurrentCompanyNSRSBH)
                                .Replace("@@ssqq", Convert.ToDateTime(item.SKSSQQ).ToString("yyyy-MM-dd"))
                                .Replace("@@ssqz", Convert.ToDateTime(item.SKSSQZ).ToString("yyyy-MM-dd"))
                                .Replace("@@tbqk", item.tbqk)
                                .Replace("@@sbzt", GTXMethod.getSBZT(item.SBZT))
                                .Replace("@@dqyisb", GTXMethod.getdqyisb(item.SBZT))
                                .Replace("@@userYSBQCId", item.Id.ToString())
                                .Replace("@@YSBQCId", item.YSBQCId.ToString());
                        }
                    }
                }
                context.Response.ContentType = "application/json";
                context.Response.Write(resjson);
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}