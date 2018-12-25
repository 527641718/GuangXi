﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace JlueTaxSystemGXGS.WSSBSL
{
    /// <summary>
    /// do_zzs2013_Zzs2013_updateTbxx 的摘要说明
    /// </summary>
    public class do_zzs2013_Zzs2013_updateTbxx : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            String json = File.ReadAllText(context.Server.MapPath("/WSSBSL/JSON/do_zzs2013_Zzs2013_updateTbxx.json"));
            context.Response.ContentType = "application/json";
            context.Response.Write(json);
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