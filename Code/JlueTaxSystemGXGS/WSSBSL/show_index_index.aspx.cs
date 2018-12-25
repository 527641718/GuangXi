﻿using JlueTaxSystemGXGS.Code;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JlueTaxSystemGXGS.WSSBSL
{
    public partial class show_index_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string questionId = Request.QueryString["questionId"].ToString();
            string userquestionId = Request.QueryString["userquestionId"].ToString();
            string companyId = Request.QueryString["companyId"].ToString();
            string classId = Request.QueryString["classid"].ToString();
            string courseId = Request.QueryString["courseid"].ToString();
            string userId = Request.QueryString["userid"].ToString();

            Session["companyId"] = companyId;
            Session["questionId"] = questionId;
            Session["userquestionId"] = userquestionId;
            Session["classId"] = classId;
            Session["courseId"] = courseId;
            Session["userId"] = userId;
            GTXResult resultCompany = GTXMethod.GetCompany();
            if (resultCompany.IsSuccess)
            {
                JObject company = (JObject)JsonConvert.DeserializeObject(resultCompany.Data.ToString());
                if (company.HasValues)
                {
                    Session["companyName"] = company["NSRMC"].ToString();
                    Session["companyNSRSBH"] = company["NSRSBH"].ToString();
                }
            }
        }
    }
}