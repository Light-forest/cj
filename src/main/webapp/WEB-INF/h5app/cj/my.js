//var isGryh = true;
 var val_bmid="";
init();

function init(){
    //val_bmid=get_guid32();
	
	$('#aDown1').attr('href', 'home.html');
    $('#aDown2').attr('href', 'bm.html');
    $('#aDown3').attr('href', 'wd.html');
    $('#aDown4').attr('href', 'my.html');


   // var _wzid="123";
   // document.getElementById("id_iframe_upload_file_zp").src
   //     ="wzxx_zp_upload.jsp?_wzid="+val_bmid+"&t="+get_guid32();
}

function  btn_query_click() {


    var val_sjhm=dvd_get_val("sjhm"); //手机号码
    // var val_yxjsm=dvd_get_val("yxjsm"); //游戏角色名
    // var val_sfzxm=dvd_get_val("sfzxm"); //身份证姓名
    // var val_sfzhm=dvd_get_val("sfzhm"); //身份证号码
    // var val_brwxh=dvd_get_val("brwxh"); //本人微信号
    // var val_wdddh=dvd_get_val("wdddh"); //微店订单号
    // var val_bmsj=get_datetime14_bz();// input_util.get_request_value(request,"bmsj"); //报名时间



    //var val_extcon="bsid in (select bsid from cj_bsxx where bsqh='"+val_bsqh+"') ";
    $.ajax({
        type: 'post',
        url: resfulURL + 'app/bmxx/listmy?sjhm='+val_sjhm,
        async: true, // 使用同步方式
        data: JSON.stringify({
        }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            console.log(response);
            var dt_list = response.data;
            show_list_bmxx(dt_list);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log("访问服务器失败1:"+XMLHttpRequest.status+XMLHttpRequest.readyState);
            console.log("访问服务器失败2:"+textStatus);
            //console.log("访问服务器失败3:"+errorThrown);

            alert('访问服务器失败');
        }
    });

}

function  show_list_bmxx(dt) {
    //var s_html = '';
    for (var i = 0; i < dt.length; i++) {
        // var val_yxjsm=dvd_get_val("yxjsm"); //游戏角色名
        // var val_sfzxm=dvd_get_val("sfzxm"); //身份证姓名
        // var val_sfzhm=dvd_get_val("sfzhm"); //身份证号码
        // var val_brwxh=dvd_get_val("brwxh"); //本人微信号
        // var val_wdddh=dvd_get_val("wdddh"); //微店订单号
        // var val_bmsj=get_datetime14_bz();// input_util.get_request_value(request,"bmsj"); //报名时间
        dvd_set_val("yxjsm",dt[i].yxjsm);
        dvd_set_val("sfzxm",dt[i].sfzxm);
        dvd_set_val("sfzhm",dt[i].sfzhm);
        dvd_set_val("brwxh",dt[i].brwxh);
        dvd_set_val("wdddh",dt[i].wdddh);

        // dvd_set_val("zt",dt[i].zt);

         val_bmid=dt[i].bmid;
         document.getElementById("id_iframe_upload_file_zp").src
             ="wzxx_zp_upload.jsp?_wzid="+val_bmid+"&t="+get_guid32();

    }

}


function is_tel(str) {
    var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
    if (!myreg.test(str)) {
        return false;
    } else {
        return true;
    }
}
function IdentityCodeValid(code) {
    var city={11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江 ",31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",42:"湖北 ",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏 ",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外 "};
    var tip = "";
    var pass= true;

    if(!code || !/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|X)$/i.test(code)){
        tip = "身份证号格式错误";
        pass = false;
    }

    else if(!city[code.substr(0,2)]){
        tip = "地址编码错误";
        pass = false;
    }
    else{
        //18位身份证需要验证最后一位校验位
        if(code.length == 18){
            code = code.split('');
            //∑(ai×Wi)(mod 11)
            //加权因子
            var factor = [ 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2 ];
            //校验位
            var parity = [ 1, 0, 'X', 9, 8, 7, 6, 5, 4, 3, 2 ];
            var sum = 0;
            var ai = 0;
            var wi = 0;
            for (var i = 0; i < 17; i++)
            {
                ai = code[i];
                wi = factor[i];
                sum += ai * wi;
            }
            var last = parity[sum % 11];
            if(parity[sum % 11] != code[17]){
                tip = "校验位错误";
                pass =false;
            }
        }
    }
    if(!pass) alert(tip);
    return pass;
}
//var c = '130981199312253466';
//var res= IdentityCodeValid(c);

function btn_ok_click(){
   //  var val_bmid=dvd_get_val("bmid"); //报名编码
   // var val_bsid=input_util.get_request_value(request,"bsid"); //比赛编码
   // var val_bsqh=input_util.get_request_value(request,"bsqh"); //比赛期号
   // var val_bmbh=input_util.get_request_value(request,"bmbh"); //报名编号
   // var val_bmid

    var val_sjhm=dvd_get_val("sjhm"); //手机号码
    var val_yxjsm=dvd_get_val("yxjsm"); //游戏角色名
    var val_sfzxm=dvd_get_val("sfzxm"); //身份证姓名
    var val_sfzhm=dvd_get_val("sfzhm"); //身份证号码
   // var val_sfzzp=input_util.get_request_value(request,"sfzzp"); //身份证照片
    var val_brwxh=dvd_get_val("brwxh"); //本人微信号
    var val_wdddh=dvd_get_val("wdddh"); //微店订单号
   // var val_sfhmd=input_util.get_request_value(request,"sfhmd"); //是否黑名单
   // var val_rhyy=input_util.get_request_value(request,"rhyy"); //入黑原因
    var val_bmsj=get_datetime14_bz();// input_util.get_request_value(request,"bmsj"); //报名时间

    if(val_sjhm ==""){alert("手机号码不可为空" );return;}
    if(val_yxjsm==""){alert("游戏角色名不可为空");return;}
    if(val_sfzxm==""){alert("身份证姓名不可为空");return;}
    if(val_sfzhm==""){alert("身份证号码不可为空");return;}
    if(val_brwxh==""){alert("本人微信号不可为空");return;}
    if(val_wdddh==""){alert("微店订单号不可为空");return;}

    if (val_sjhm.length !== 11) {
        alert('手机号码长度不对');
        return;
    }
    if (!is_tel(val_sjhm)) {
        alert('手机号码格式不对');
        return;
    }
   // if (!IdentityCodeValid(val_sfzhm)) {
       // alert('身份证不正确');
       // return;
    //}



    $.ajax({
        type: 'post',
        url: resfulURL + 'cj_bmxx/modify/v1',
        async: true, // 使用同步方式
        data: JSON.stringify({
            "xxid":val_bmid,
            "data":{
                "bmid":val_bmid ,
                "sjhm":val_sjhm ,
                "yxjsm":val_yxjsm,
                "sfzxm":val_sfzxm,
                "sfzhm":val_sfzhm,
                "brwxh":val_brwxh,
                "wdddh":val_wdddh
            }
        }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            //$.toast("操作注册成功");
            alert('恭喜你，报名信息更新成功');
            location='home.html'
        },
        error: function (errorinfo) {
            alert('访问服务器失败');
        }
    });

}

function is_tel(str) {
    var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
    if (!myreg.test(str)) {
        return false;
    } else {
        return true;
    }
}

$("#btnReg").click(function () {
	//alert("提交");
/*
	var msg="";
	
	msg+="重要须知：    在您决定成为““XX”以及”XX”旗下游戏”正式用户前，您必须阅读和同意本用户条款。 您必须在完全同意以下条款及其附加其他服务条款和管理制度的前提下，才能完成注册程序，成为”XX”以及”XX”旗下游戏用户后，才能使用我们所提供的服务。  您一旦点击“同意”按钮并注册成为”XX”以及”XX”旗下游戏的用户，表示您已经同意以下及后面的附加服务条款和管理制度。  本条款的修改权和解释权归深圳市XX电脑技术有限公司所有。  1、服务内容  1.1 服务名称及内容：”XX”以及”XX”旗下游戏及深圳市XX电脑技术有限公司（以下简称XX） 提供的与”XX”以及”XX”旗下游戏配套的网站服务，包括论坛、资讯等服务。  1.2 服务提供方：XX 1.3 服务条款的确认与接纳：  XX同意按照本协议的规定及其不时发布的规则提供本协议规定的服务，为获得本服务，服务使用人(以下称“用户”)同意本协议的全部条款并按照页面上的提示完成全部的注册程序。用户在进行注册程序过程中点击“同意”按钮即表示用户完全接受本协议项下的全部条款，遵守以该注册用户名能够享受到的所有服务的条款及管理规则。  用户在使用XX提供的各项服务之前，应仔细阅读本服务协议，特别是免除或者限制XX责任的免责条款及对用户的权利限制。如用户不同意本服务协议或随时对其的修改，请停止使用XX提供的服务。  1.4 提示：XX仅提供相关的网络服务，除此之外与相关网络服务有关的设备(如电脑、调制解调器及其他与接入互联网有关的设备)及所需的费用(如为接入互联网而支付的电话费及上网费)均应由用户自行负担。  2、用户规则  2.1 用户注册规则  2.1.1 用户须承诺在申请用户名时遵循如下规定：  （1）用户名的注册及使用须遵守网络道德，遵守中华人民共和国的有关法律法规；  （2）用户名中不得含有任何威胁、恐吓、漫骂、庸俗、亵渎、色情、淫秽、非法、反动、前后矛盾、攻击性、伤害性、骚扰性、诽谤性、辱骂性的或侵害他人知识产权的文字。不得涉及政治、国家领导人或宗教领导人，以及任何可能引起法律纠纷的文字。  2.1.2 用户可以申请新的用户名，但不可以要求删除旧的用户名。  2.1.3 XX根据需要，有权随时对含有相关词语的用户名予以保留注册。对已注册成功的用户，若含有XX禁止或保留注册词语的，XX亦保留强制更名或删除用户名的权利。  2.1.4 XX仅面对个人用户，任何单位或其它组织均不允许注册成为”XX”以及”XX”旗下游戏用户。 2.2 用户密码管理规则  2.2.1 用户必须保管好自己的用户名和密码，谨防被盗或泄露。因密码被盗或泄露造成的全部责任和损失均由用户本人承担，XX概不负责。  2.2.2 用户因忘记密码或密码被盗向XX提出修改密码请求时，必须提供完全正确的身份信息，否则XX有权本着为用户保密的原则不予告知。";
	msg+="";
	msg+="";
	msg+="";
	msg+="";
	msg+="";
	msg+="";
	msg+="";
	msg+="";
	msg+="";
	
	$.confirm(msg, "确认", function() {
	   $.toast("确认进行报名!");
	}, function() {
		$.toast("取消报名!");
	  //取消操作
	});

*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	return;
    var idsjhm = $('#idsjhm').val();
    var idhymm = $('#idhymm').val();  
    if (idsjhm === '') {
        alert('手机号码不可为空') 
        return
    }
    if (idsjhm.length !== 11) {
        alert('手机号码长度不对')
        return
    }
    if (!is_tel(idsjhm)) {
        alert('手机号码格式不对')
        return
    }


    if (idhymm === '') {
        alert('密码不可为空');
        return;
    }

    var sValhyid = getGuid32();
    var sValhydj = "个人用户";
    if (!this.isGryh) {
        sValhydj = '企业用户'
    }
     
    //
    var sqlInsert = '' 
    var hyid = sValhyid
    var sjhm = idsjhm
    var hymm = idhymm
    var hymc = idhymc
    var hydj = sValhydj
    var xxdz = idxxdz
    var bz01 = idbz01
    var bz02 = idbz02
    var bz03 = idbz03
    var bz04 = idbz04
    var bz05 = idbz05
    var bz06 = idbz06
    var bz07 = idbz07
    var bz08 = idbz08
    var bz09 = idbz09
    var zcsj = get_datetime14_bz()

    var fieldList = ''
    fieldList += 'hyid,'
    fieldList += 'sjhm,'
    fieldList += 'hymm,'
    fieldList += 'hymc,'
    fieldList += 'hydj,'
    fieldList += 'xxdz,'
    fieldList += 'bz01,'
    fieldList += 'bz02,'
    fieldList += 'bz03,'
    fieldList += 'bz04,'
    fieldList += 'bz05,'
    fieldList += 'bz06,'
    fieldList += 'bz07,'
    fieldList += 'bz08,'
    fieldList += 'bz09,'
    fieldList += 'zcsj '

    var valueList = ''
    valueList += '\'' + hyid + '\','
    valueList += '\'' + sjhm + '\','
    valueList += '\'' + hymm + '\','
    valueList += '\'' + hymc + '\','
    valueList += '\'' + hydj + '\','
    valueList += '\'' + xxdz + '\','
    valueList += '\'' + bz01 + '\','
    valueList += '\'' + bz02 + '\','
    valueList += '\'' + bz03 + '\','
    valueList += '\'' + bz04 + '\','
    valueList += '\'' + bz05 + '\','
    valueList += '\'' + bz06 + '\','
    valueList += '\'' + bz07 + '\','
    valueList += '\'' + bz08 + '\','
    valueList += '\'' + bz09 + '\','
    valueList += '\'' + zcsj + '\' '

    sqlInsert += ' insert into shop_hyxx(' + fieldList + ') values(' + valueList + ')' 

    $.ajax({
        type: 'post',
        url: serverURL + 'insertSql.ashx',
        async: true, // 使用同步方式
        data: JSON.stringify({
            sql: sqlInsert
        }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) { 
            //$.toast("操作注册成功");
            alert('注册成功，可以进行登陆了')
            location='login.html'
        },
        error: function (errorinfo) {
            alert('访问服务器失败');
        }
    });
 
});




$("#idRadioGryh").click(function () {
    //alert($(this).val());
    if($(this).val() === "on"){
        isGryh=true;
    }
    showInputItem(isGryh);
});
$("#idRadioQyyh").click(function () {
    //alert($(this).val());
    if($(this).val() === "on"){
        isGryh=false;
    }
    //alert(isGryh);
    showInputItem(isGryh);
});

function showInputItem(_isGryh) {
    if(_isGryh){
        $("#idDivGrxx").css("display","");
        $("#idDivQyxx").css("display","none");
    }else{
        $("#idDivGrxx").css("display","none");
        $("#idDivQyxx").css("display","");
    }
}
