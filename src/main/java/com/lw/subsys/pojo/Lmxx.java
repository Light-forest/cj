package com.lw.subsys.pojo;

public class Lmxx { //栏目信息

	     private String lmid;	//栏目编码 
     private String lmbh;	//栏目编号 
     private String lmsx;	//栏目顺序 
     private String zwbt;	//中文标题 
     private String ywbt;	//英文标题 
     private String lmtp;	//栏目图片 
     private String zwsm;	//中文说明 
     private String ywsm;	//英文说明 
     private String djzx;	//点击展现 
     private String bjsj;	//编辑时间 
     private String bjry;	//编辑人员 
     private String fuid;	//父栏编码 
     private String fumc;	//父栏名称 
     private String lmlj;	//栏目路径 
     private String wldz;	//外链地址 
     private String lmzt;	//栏目状态 
     private String gjcy;	//关键词语 
     private String wzsl;	//文章数量 
     private String djsl;	//点击数量 
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
	
	     public String getLmid() { return lmid; } public void setLmid(String lmid) { this.lmid = lmid; }		//栏目编码 
     public String getLmbh() { return lmbh; } public void setLmbh(String lmbh) { this.lmbh = lmbh; }		//栏目编号 
     public String getLmsx() { return lmsx; } public void setLmsx(String lmsx) { this.lmsx = lmsx; }		//栏目顺序 
     public String getZwbt() { return zwbt; } public void setZwbt(String zwbt) { this.zwbt = zwbt; }		//中文标题 
     public String getYwbt() { return ywbt; } public void setYwbt(String ywbt) { this.ywbt = ywbt; }		//英文标题 
     public String getLmtp() { return lmtp; } public void setLmtp(String lmtp) { this.lmtp = lmtp; }		//栏目图片 
     public String getZwsm() { return zwsm; } public void setZwsm(String zwsm) { this.zwsm = zwsm; }		//中文说明 
     public String getYwsm() { return ywsm; } public void setYwsm(String ywsm) { this.ywsm = ywsm; }		//英文说明 
     public String getDjzx() { return djzx; } public void setDjzx(String djzx) { this.djzx = djzx; }		//点击展现 
     public String getBjsj() { return bjsj; } public void setBjsj(String bjsj) { this.bjsj = bjsj; }		//编辑时间 
     public String getBjry() { return bjry; } public void setBjry(String bjry) { this.bjry = bjry; }		//编辑人员 
     public String getFuid() { return fuid; } public void setFuid(String fuid) { this.fuid = fuid; }		//父栏编码 
     public String getFumc() { return fumc; } public void setFumc(String fumc) { this.fumc = fumc; }		//父栏名称 
     public String getLmlj() { return lmlj; } public void setLmlj(String lmlj) { this.lmlj = lmlj; }		//栏目路径 
     public String getWldz() { return wldz; } public void setWldz(String wldz) { this.wldz = wldz; }		//外链地址 
     public String getLmzt() { return lmzt; } public void setLmzt(String lmzt) { this.lmzt = lmzt; }		//栏目状态 
     public String getGjcy() { return gjcy; } public void setGjcy(String gjcy) { this.gjcy = gjcy; }		//关键词语 
     public String getWzsl() { return wzsl; } public void setWzsl(String wzsl) { this.wzsl = wzsl; }		//文章数量 
     public String getDjsl() { return djsl; } public void setDjsl(String djsl) { this.djsl = djsl; }		//点击数量 
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
		return "Lmxx ["
				    +"lmid=" + lmid + ","	//栏目编码
    +"lmbh=" + lmbh + ","	//栏目编号
    +"lmsx=" + lmsx + ","	//栏目顺序
    +"zwbt=" + zwbt + ","	//中文标题
    +"ywbt=" + ywbt + ","	//英文标题
    +"lmtp=" + lmtp + ","	//栏目图片
    +"zwsm=" + zwsm + ","	//中文说明
    +"ywsm=" + ywsm + ","	//英文说明
    +"djzx=" + djzx + ","	//点击展现
    +"bjsj=" + bjsj + ","	//编辑时间
    +"bjry=" + bjry + ","	//编辑人员
    +"fuid=" + fuid + ","	//父栏编码
    +"fumc=" + fumc + ","	//父栏名称
    +"lmlj=" + lmlj + ","	//栏目路径
    +"wldz=" + wldz + ","	//外链地址
    +"lmzt=" + lmzt + ","	//栏目状态
    +"gjcy=" + gjcy + ","	//关键词语
    +"wzsl=" + wzsl + ","	//文章数量
    +"djsl=" + djsl + ","	//点击数量
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
