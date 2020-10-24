package com.lw.subsys.pojo;

public class Bsmx { //比赛明细

	     private String mxid;	//明细编码 
     private String bsid;	//比赛编码 
     private String bmid;	//报名编码 
     private String bsqh;	//比赛期号 
     private String jsmc;	//游戏角色名 
     private String bssj;	//比赛时间 
     private String bscc;	//吃鸡次数 
     private String bsmc;	//比赛名次 
     private String bszm;	//比赛证明 
     private String bz00;	//备注项00 
     private String bz01;	//比赛奖金 
     private String bz02;	//备注项02 
     private String bz03;	//备注项03 
     private String bz04;	//备注项04 
     private String bz05;	//备注项05 
     private String bz06;	//备注项06 
     private String bz07;	//备注项07 
     private String bz08;	//备注项08 
     private String bz09;	//备注项09 
     private String bz10;	//备注项10 
     private String bz11;	//备注项11 
     private String bz12;	//备注项12 
     private String bz13;	//备注项13 
     private String bz14;	//备注项14 
     private String bz15;	//备注项15 
     private String bz16;	//备注项16 
     private String bz17;	//备注项17 
     private String bz18;	//备注项18 
     private String bz19;	//备注项19 

	/*
	private String id;	//粉丝编码
	private String xm;	//粉丝姓名
	*/
	
	     public String getMxid() { return mxid; } public void setMxid(String mxid) { this.mxid = mxid; }		//明细编码 
     public String getBsid() { return bsid; } public void setBsid(String bsid) { this.bsid = bsid; }		//比赛编码 
     public String getBmid() { return bmid; } public void setBmid(String bmid) { this.bmid = bmid; }		//报名编码 
     public String getBsqh() { return bsqh; } public void setBsqh(String bsqh) { this.bsqh = bsqh; }		//比赛期号 
     public String getJsmc() { return jsmc; } public void setJsmc(String jsmc) { this.jsmc = jsmc; }		//游戏角色名 
     public String getBssj() { return bssj; } public void setBssj(String bssj) { this.bssj = bssj; }		//比赛时间 
     public String getBscc() { return bscc; } public void setBscc(String bscc) { this.bscc = bscc; }		//吃鸡次数 
     public String getBsmc() { return bsmc; } public void setBsmc(String bsmc) { this.bsmc = bsmc; }		//比赛名次 
     public String getBszm() { return bszm; } public void setBszm(String bszm) { this.bszm = bszm; }		//比赛证明 
     public String getBz00() { return bz00; } public void setBz00(String bz00) { this.bz00 = bz00; }		//备注项00 
     public String getBz01() { return bz01; } public void setBz01(String bz01) { this.bz01 = bz01; }		//比赛奖金 
     public String getBz02() { return bz02; } public void setBz02(String bz02) { this.bz02 = bz02; }		//备注项02 
     public String getBz03() { return bz03; } public void setBz03(String bz03) { this.bz03 = bz03; }		//备注项03 
     public String getBz04() { return bz04; } public void setBz04(String bz04) { this.bz04 = bz04; }		//备注项04 
     public String getBz05() { return bz05; } public void setBz05(String bz05) { this.bz05 = bz05; }		//备注项05 
     public String getBz06() { return bz06; } public void setBz06(String bz06) { this.bz06 = bz06; }		//备注项06 
     public String getBz07() { return bz07; } public void setBz07(String bz07) { this.bz07 = bz07; }		//备注项07 
     public String getBz08() { return bz08; } public void setBz08(String bz08) { this.bz08 = bz08; }		//备注项08 
     public String getBz09() { return bz09; } public void setBz09(String bz09) { this.bz09 = bz09; }		//备注项09 
     public String getBz10() { return bz10; } public void setBz10(String bz10) { this.bz10 = bz10; }		//备注项10 
     public String getBz11() { return bz11; } public void setBz11(String bz11) { this.bz11 = bz11; }		//备注项11 
     public String getBz12() { return bz12; } public void setBz12(String bz12) { this.bz12 = bz12; }		//备注项12 
     public String getBz13() { return bz13; } public void setBz13(String bz13) { this.bz13 = bz13; }		//备注项13 
     public String getBz14() { return bz14; } public void setBz14(String bz14) { this.bz14 = bz14; }		//备注项14 
     public String getBz15() { return bz15; } public void setBz15(String bz15) { this.bz15 = bz15; }		//备注项15 
     public String getBz16() { return bz16; } public void setBz16(String bz16) { this.bz16 = bz16; }		//备注项16 
     public String getBz17() { return bz17; } public void setBz17(String bz17) { this.bz17 = bz17; }		//备注项17 
     public String getBz18() { return bz18; } public void setBz18(String bz18) { this.bz18 = bz18; }		//备注项18 
     public String getBz19() { return bz19; } public void setBz19(String bz19) { this.bz19 = bz19; }		//备注项19 

	/*
	public String getId() { return id; } public void setId(String id) { this.id = id; }		//粉丝编码
	public String getXm() { return xm; } public void setXm(String xm) { this.xm = xm; }		//粉丝编码
	*/
	
	@Override
	public String toString() {
		return "Bsmx ["
				    +"mxid=" + mxid + ","	//明细编码
    +"bsid=" + bsid + ","	//比赛编码
    +"bmid=" + bmid + ","	//报名编码
    +"bsqh=" + bsqh + ","	//比赛期号
    +"jsmc=" + jsmc + ","	//游戏角色名
    +"bssj=" + bssj + ","	//比赛时间
    +"bscc=" + bscc + ","	//吃鸡次数
    +"bsmc=" + bsmc + ","	//比赛名次
    +"bszm=" + bszm + ","	//比赛证明
    +"bz00=" + bz00 + ","	//备注项00
    +"bz01=" + bz01 + ","	//比赛奖金
    +"bz02=" + bz02 + ","	//备注项02
    +"bz03=" + bz03 + ","	//备注项03
    +"bz04=" + bz04 + ","	//备注项04
    +"bz05=" + bz05 + ","	//备注项05
    +"bz06=" + bz06 + ","	//备注项06
    +"bz07=" + bz07 + ","	//备注项07
    +"bz08=" + bz08 + ","	//备注项08
    +"bz09=" + bz09 + ","	//备注项09
    +"bz10=" + bz10 + ","	//备注项10
    +"bz11=" + bz11 + ","	//备注项11
    +"bz12=" + bz12 + ","	//备注项12
    +"bz13=" + bz13 + ","	//备注项13
    +"bz14=" + bz14 + ","	//备注项14
    +"bz15=" + bz15 + ","	//备注项15
    +"bz16=" + bz16 + ","	//备注项16
    +"bz17=" + bz17 + ","	//备注项17
    +"bz18=" + bz18 + ","	//备注项18
    +"bz19=" + bz19 + " "	//备注项19

				/*
				+"id=" + id + ","	//粉丝编码
				+"xm=" + xm + ""	//粉丝姓名
		        */
				+ "]";
	} 
	
}
