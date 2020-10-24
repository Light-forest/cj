init();
function init() {
    init_bsxx();
}
//查询并显示比赛结果信息
function init_bsxx() {
    $.ajax({
        type: 'post',
        url: resfulURL + 'app/bsxx/list',
        async: true,        // 使用同步方式
        data: JSON.stringify({
            "pageno": "1",
            "pagesize":"200",
            "orderby":"bsbh asc",
            "flist":"*",
            "con":{
            },
            "extcon":"1=1"
        }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            console.log(response);
            var dt_list = response.data; //查询结果
            show_list_bsxx(dt_list);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log("访问服务器失败1:"+XMLHttpRequest.status+XMLHttpRequest.readyState);
            console.log("访问服务器失败2:"+textStatus);
            //console.log("访问服务器失败3:"+errorThrown);
            alert('访问服务器失败');
        }
    });

}

var dt_bsxx;
function  show_list_bsxx(dt) {
    dt_bsxx=dt;
    var s_html = new Array();
    for (var i = 0; i < dt.length; i++) {
        var s = dt[i].bsqh+"("+dt[i].jssj+")";  //比赛期号，结束时间
        s_html[i]=s;
    }
     /*
      s_html :
      第一期 (2018.6)
      第二期 (2018.7)
      第三期 (2018.8)
     */

    //生成期号选择控件
    var bs_sel="";
    $("#mobile").picker({
        title: "请选择比赛",
        cols: [
            {
                textAlign: 'center',
                values: s_html
            }
        ],
        onChange: function(p, v, dv) {
            bs_sel=v[0];
            console.log(p, v, dv);
        },
        onClose: function(p, v, d) {
            console.log("close");
            //$("#mobile").html(bs_sel);
            $("#td_bsqh").html(bs_sel);
            //alert("显示比赛结果："+bs_sel);
            query_and_show_list_bsmx(bs_sel.split("(")[0]); //
        }
    });


    //初始化先显示最后一期的结果
    var s_bsqh= dt_bsxx[0].bsqh+"("+dt_bsxx[0].jssj+")";
    $("#td_bsqh").html(s_bsqh);
    query_and_show_list_bsmx(dt_bsxx[0].bsqh);
}

function  query_and_show_list_bsmx(val_bsqh){
    var val_extcon="";
    $.ajax({
        type: 'post',
        url: resfulURL + 'app/bsmx/list?bsqh='+val_bsqh,
        async: true, // 使用同步方式
        data: JSON.stringify({
            "pageno": "1",
            "pagesize":"200",
            "orderby":"bsmc asc",
            "flist":"*",
            "con":{
            },
            "extcon":val_extcon
        }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {

            console.log(response);
            var dt_list = response.data;
            show_list_bsmx(dt_list);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log("访问服务器失败1:"+XMLHttpRequest.status+XMLHttpRequest.readyState);
            console.log("访问服务器失败2:"+textStatus);
            //console.log("访问服务器失败3:"+errorThrown);
            alert('访问服务器失败');
        }
    });
}
function show_list_bsmx(dt){
    var s_html = '';
    for (var i = 0; i < dt.length; i++) {
        var s = '';
        s+='  <div class="weui-cell weui-cell_swiped">';
        s+='        <div class="weui-cell__bd">';
        s+='       <div class="weui-cell">';
        s+='       <table style="width:100%;">';
        s+='        <tbody>';
        s+='    <tr>';
        s+='     <td style="color:orange;width:30px;">'+dt[i].bsmc+'</td>';
        s+='     <td style="width:70px;">';
        s+='     <img src="images/c'+ ((i+1) % 6) +'.jpg"  style="width:60px;height:60px; border-radius:50px">';
        s+='     </td>';
        s+='     <td style="padding-left:10px; text-align:left;font-weight:bold; ">';
        s+='   <h6>';
        s+='   '+dt[i].jsmc+'';
        s+='   </h6>';
        s+='   </td>';
        s+='   <td style="text-align:left;padding-right:20px;width:80px;">';
        s+='   <h6>';
        s+='   吃鸡<span style="color:red;font-weight:bold;">'+dt[i].bscc+'</span>次,';
        s+='   <br/>';
        s+='   奖金<span style="color:red;font-weight:bold;">'+ (dt[i].bz01).replace('元','') +'</span>元';
        s+='   </h6>';
        s+='   </td>';
        s+='    </tr>';
        s+='    </tbody>';
        s+='    </table>';
        s+='    </div>';
        s+='    </div>';
        s+='   </div>';
        s_html += s;
    }
    $('#divXxlist').html(s_html);
}
