﻿using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace JlueTaxSystemGXGS.Code
{
    /// <summary>
    /// 学员英申报清册信息
    /// </summary>
    public class GTXGXUserYSBQC
    {

        /// <summary>
        /// 主键
        /// </summary>
        public Int32 Id { get; set; }

        /// <summary>
        /// 学员id
        /// </summary>
        public String UserId { get; set; }

        /// <summary>
        /// 企业id
        /// </summary>
        public Int32 CompanyId { get; set; }

        /// <summary>
        /// 共享的应申报清册id
        /// </summary>
        public string YSBQCId { get; set; }

        /// <summary>
        /// 题目id
        /// </summary>
        public Int32 QuestionId { get; set; }

        /// <summary>
        /// 用户题目id
        /// </summary>
        public Int32 UserQuestionId { get; set; }

        /// <summary>
        /// 任务名称
        /// </summary>
        public String TaskName { get; set; }

        /// <summary>
        /// ZSXMMC
        /// </summary>
        public String ZSXMMC { get; set; }

        /// <summary>
        /// reportid
        /// </summary>
        public String reportid { get; set; }

        /// <summary>
        /// 发生日期
        /// </summary>
        public String HappenDate { get; set; }

        /// <summary>
        /// 申报状态
        /// </summary>
        public String SBZT { get; set; }

        /// <summary>
        /// 税款所属期起
        /// </summary>
        public String SKSSQQ { get; set; }

        /// <summary>
        /// 税款所属期止
        /// </summary>
        public String SKSSQZ { get; set; }

        /// <summary>
        /// 申报期限起
        /// </summary>
        public String SBQQ { get; set; }

        /// <summary>
        /// 申报期限止
        /// </summary>
        public String SBQZ { get; set; }

        /// <summary>
        /// 填报情况
        /// </summary>
        public String tbqk { get; set; }

        /// <summary>
        /// 备注
        /// </summary>
        public String BZ { get; set; }
    }
}
