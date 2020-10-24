package com.lw.subsys.pojo;

public class Fjxx { //附件信息

	     private String fjid;	//附件编码 
     private String fuid;	//父表编码 
     private String fjlx;	//附件类型 
     private String fjwj;	//附件文件 
     private String fjsj;	//附件时间 
     private String fjsm;	//附件说明 
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
	
	     public String getFjid() { return fjid; } public void setFjid(String fjid) { this.fjid = fjid; }		//附件编码 
     public String getFuid() { return fuid; } public void setFuid(String fuid) { this.fuid = fuid; }		//父表编码 
     public String getFjlx() { return fjlx; } public void setFjlx(String fjlx) { this.fjlx = fjlx; }		//附件类型 
     public String getFjwj() { return fjwj; } public void setFjwj(String fjwj) { this.fjwj = fjwj; }		//附件文件 
     public String getFjsj() { return fjsj; } public void setFjsj(String fjsj) { this.fjsj = fjsj; }		//附件时间 
     public String getFjsm() { return fjsm; } public void setFjsm(String fjsm) { this.fjsm = fjsm; }		//附件说明 
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
		return "Fjxx ["
				    +"fjid=" + fjid + ","	//附件编码
    +"fuid=" + fuid + ","	//父表编码
    +"fjlx=" + fjlx + ","	//附件类型
    +"fjwj=" + fjwj + ","	//附件文件
    +"fjsj=" + fjsj + ","	//附件时间
    +"fjsm=" + fjsm + ","	//附件说明
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
