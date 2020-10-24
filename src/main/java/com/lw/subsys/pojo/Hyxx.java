package com.lw.subsys.pojo;

public class Hyxx { //会员信息

	     private String hyid;	//会员编码 
     private String dlzh;	//登录账号 
     private String dlmm;	//登录密码 
     private String hymc;	//会员名称 
     private String hyjb;	//会员级别 
     private String zcrq;	//注册日期 
     private String hyzt;	//会员状态 
     private String lxdh;	//联系电话 
     private String yjdz;	//邮件地址 
     private String qqhm;	//QQ__号码 
     private String msnh;	//MSN_号码 
     private String txdz;	//通讯地址 
     private String yzbm;	//邮政编码 
     private String bzxx;	//备注信息 
     private String bz00;	//备注项00 
     private String bz01;	//备注项01 
     private String bz02;	//备注项02 
     private String bz03;	//备注项03 
     private String bz04;	//备注项04 
     private String bz05;	//备注项05 
     private String bz06;	//备注项06 
     private String bz07;	//备注项07 
     private String bz08;	//备注项08 
     private String bz09;	//备注项09 

	/*
	private String id;	//粉丝编码
	private String xm;	//粉丝姓名
	*/
	
	     public String getHyid() { return hyid; } public void setHyid(String hyid) { this.hyid = hyid; }		//会员编码 
     public String getDlzh() { return dlzh; } public void setDlzh(String dlzh) { this.dlzh = dlzh; }		//登录账号 
     public String getDlmm() { return dlmm; } public void setDlmm(String dlmm) { this.dlmm = dlmm; }		//登录密码 
     public String getHymc() { return hymc; } public void setHymc(String hymc) { this.hymc = hymc; }		//会员名称 
     public String getHyjb() { return hyjb; } public void setHyjb(String hyjb) { this.hyjb = hyjb; }		//会员级别 
     public String getZcrq() { return zcrq; } public void setZcrq(String zcrq) { this.zcrq = zcrq; }		//注册日期 
     public String getHyzt() { return hyzt; } public void setHyzt(String hyzt) { this.hyzt = hyzt; }		//会员状态 
     public String getLxdh() { return lxdh; } public void setLxdh(String lxdh) { this.lxdh = lxdh; }		//联系电话 
     public String getYjdz() { return yjdz; } public void setYjdz(String yjdz) { this.yjdz = yjdz; }		//邮件地址 
     public String getQqhm() { return qqhm; } public void setQqhm(String qqhm) { this.qqhm = qqhm; }		//QQ__号码 
     public String getMsnh() { return msnh; } public void setMsnh(String msnh) { this.msnh = msnh; }		//MSN_号码 
     public String getTxdz() { return txdz; } public void setTxdz(String txdz) { this.txdz = txdz; }		//通讯地址 
     public String getYzbm() { return yzbm; } public void setYzbm(String yzbm) { this.yzbm = yzbm; }		//邮政编码 
     public String getBzxx() { return bzxx; } public void setBzxx(String bzxx) { this.bzxx = bzxx; }		//备注信息 
     public String getBz00() { return bz00; } public void setBz00(String bz00) { this.bz00 = bz00; }		//备注项00 
     public String getBz01() { return bz01; } public void setBz01(String bz01) { this.bz01 = bz01; }		//备注项01 
     public String getBz02() { return bz02; } public void setBz02(String bz02) { this.bz02 = bz02; }		//备注项02 
     public String getBz03() { return bz03; } public void setBz03(String bz03) { this.bz03 = bz03; }		//备注项03 
     public String getBz04() { return bz04; } public void setBz04(String bz04) { this.bz04 = bz04; }		//备注项04 
     public String getBz05() { return bz05; } public void setBz05(String bz05) { this.bz05 = bz05; }		//备注项05 
     public String getBz06() { return bz06; } public void setBz06(String bz06) { this.bz06 = bz06; }		//备注项06 
     public String getBz07() { return bz07; } public void setBz07(String bz07) { this.bz07 = bz07; }		//备注项07 
     public String getBz08() { return bz08; } public void setBz08(String bz08) { this.bz08 = bz08; }		//备注项08 
     public String getBz09() { return bz09; } public void setBz09(String bz09) { this.bz09 = bz09; }		//备注项09 

	/*
	public String getId() { return id; } public void setId(String id) { this.id = id; }		//粉丝编码
	public String getXm() { return xm; } public void setXm(String xm) { this.xm = xm; }		//粉丝编码
	*/
	
	@Override
	public String toString() {
		return "Hyxx ["
				    +"hyid=" + hyid + ","	//会员编码
    +"dlzh=" + dlzh + ","	//登录账号
    +"dlmm=" + dlmm + ","	//登录密码
    +"hymc=" + hymc + ","	//会员名称
    +"hyjb=" + hyjb + ","	//会员级别
    +"zcrq=" + zcrq + ","	//注册日期
    +"hyzt=" + hyzt + ","	//会员状态
    +"lxdh=" + lxdh + ","	//联系电话
    +"yjdz=" + yjdz + ","	//邮件地址
    +"qqhm=" + qqhm + ","	//QQ__号码
    +"msnh=" + msnh + ","	//MSN_号码
    +"txdz=" + txdz + ","	//通讯地址
    +"yzbm=" + yzbm + ","	//邮政编码
    +"bzxx=" + bzxx + ","	//备注信息
    +"bz00=" + bz00 + ","	//备注项00
    +"bz01=" + bz01 + ","	//备注项01
    +"bz02=" + bz02 + ","	//备注项02
    +"bz03=" + bz03 + ","	//备注项03
    +"bz04=" + bz04 + ","	//备注项04
    +"bz05=" + bz05 + ","	//备注项05
    +"bz06=" + bz06 + ","	//备注项06
    +"bz07=" + bz07 + ","	//备注项07
    +"bz08=" + bz08 + ","	//备注项08
    +"bz09=" + bz09 + " "	//备注项09

				/*
				+"id=" + id + ","	//粉丝编码
				+"xm=" + xm + ""	//粉丝姓名
		        */
				+ "]";
	} 
	
}
