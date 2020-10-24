var val_bmid="";
init();

function init(){
    val_bmid=get_guid32();
    var urlZp="../../cms/appfjZpUpload/list?fuid="+val_bmid+"&t="+get_guid32();
    //alert(urlZp);
    document.getElementById("id_iframe_upload_file_zp").src=urlZp;
    dvd_set_val("bmid",val_bmid);

    init_lastest_bsid();

}

function init_lastest_bsid(){
    $.ajax({
        type: 'post', //注意要用post，不用带参数？
        url: resfulURL + 'app/bsxx/lastest',
        async: true, // 使用同步方式
        data: JSON.stringify({
        }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            console.log(response);
            //console.log(response.data);
            var list_bsxx = response.data;
            dvd_set_val("bsid",list_bsxx[0].bsid);
            dvd_set_val("bsqh",list_bsxx[0].bsqh);

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
function IdentityCodeValid(code) {
    var city={11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江 ",31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",42:"湖北 ",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏 ",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外 "};
    var tip = "";
    var pass= true;

    if(!code || !/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|X)$/i.test(code)){
        tip = "身份证号格式错误";
        pass = false;
    }

    else if(!city[code.substr(0,2)]){
        tip = "身份证地址编码错误";
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
                tip = "身份证校验位错误";
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
    var val_sjhm=dvd_get_val("sjhm"); //手机号码
    var val_yxjsm=dvd_get_val("yxjsm"); //游戏角色名
    var val_sfzxm=dvd_get_val("sfzxm"); //身份证姓名
    var val_sfzhm=dvd_get_val("sfzhm"); //身份证号码
   // var val_sfzzp=input_util.get_request_value(request,"sfzzp"); //身份证照片
    var val_brwxh=dvd_get_val("brwxh"); //本人微信号
   // var val_wdddh=dvd_get_val("wdddh"); //微店订单号
   // var val_sfhmd=input_util.get_request_value(request,"sfhmd"); //是否黑名单
   // var val_rhyy=input_util.get_request_value(request,"rhyy"); //入黑原因
    var val_bmsj=get_datetime14_bz();// input_util.get_request_value(request,"bmsj"); //报名时间

    if(val_sjhm ==""){alert("手机号码不可为空" );return;}
    if(val_yxjsm==""){alert("游戏角色名不可为空");return;}
    if(val_sfzxm==""){alert("身份证姓名不可为空");return;}
    if(val_sfzhm==""){alert("身份证号码不可为空");return;}
    if(val_brwxh==""){alert("本人微信号不可为空");return;}

    if (val_sjhm.length !== 11) {
        alert('手机号码长度不对');
        return;
    }
    if (!is_tel(val_sjhm)) {
        alert('手机号码格式不对');
        return;
    }
    //if (!IdentityCodeValid(val_sfzhm)) {
       // alert('身份证不正确');
       // return;
    //}

   // formadd.submit()
   // alert($("#formadd").serialize());

   // $(this).serialize()

    $.ajax({
        type: 'post',
        url: resfulURL + 'app/bmxx/bmadd.do?'+$("#formadd").serialize(),
        async: true, // 使用同步方式
        data: JSON.stringify({
            //"data":{
                "bmid":val_bmid ,
                "sjhm":val_sjhm ,
                "yxjsm":val_yxjsm,
                "sfzxm":val_sfzxm,
                "sfzhm":val_sfzhm,
                "brwxh":val_brwxh,
                "bmsj":val_bmsj
            //}
        }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {

            alert('恭喜你，报名成功');
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
