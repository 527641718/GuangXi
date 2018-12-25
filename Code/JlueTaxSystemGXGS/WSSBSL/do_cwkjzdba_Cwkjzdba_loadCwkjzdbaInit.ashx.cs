﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace JlueTaxSystemGXGS.WSSBSL
{
    /// <summary>
    /// do_cwkjzdba_Cwkjzdba_loadCwkjzdbaInit 的摘要说明
    /// </summary>
    public class do_cwkjzdba_Cwkjzdba_loadCwkjzdbaInit : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            String jsonResult = File.ReadAllText(context.Server.MapPath("/WSSBSL/JSON/do_cwkjzdba_Cwkjzdba_loadCwkjzdbaInit.json"));
            context.Response.ContentType = "application/json";
            context.Response.Write(jsonResult);
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