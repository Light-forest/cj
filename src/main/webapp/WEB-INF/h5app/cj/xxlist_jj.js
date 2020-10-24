init();
function init() {

    $('#aA').attr('href', 'xxlist_gz.html');
    $('#aB').attr('href', 'xxlist_jj.html');
    $('#aC').attr('href', 'xxlist_rs.html');
    $('#aD').attr('href', 'xxlist_jg.html');
    $('#aE').attr('href', 'xxlist_hmd.html');


    // alert("init");
    query_and_show_list();
    /*
    var curHyid = request.QueryString("curHyid");
    var curHymc = request.QueryString("curHymc");
    var curLmbh = request.QueryString("curLmbh");
    var curLmmc = request.QueryString("curLmmc");

    //curLmmc = decodeURIComponent(curLmmc);
    //$('#divHeadTitle').html(curLmmc);
    // alert(curLmmc);
    //var curFlid = request.QueryString("curFlid");
    //var curFlmc = request.QueryString("curFlmc");

    if ((curHyid == null) || (curHyid === '')) {
        alert('请先注册登陆，然后进入本功能！');
        location = 'login.html';
    }

    queryAndShowXxlist(curHyid, curHymc, curLmbh, curLmmc);


    $('#aDown1').attr('href', 'home.html?' + 'curHyid=' + curHyid + '&curHymc=' + curHymc + '');
    $('#aDown2').attr('href', 'xxlist.html?' + 'curLmbh=102001&curLmmc=售后服务&curHyid=' + curHyid + '&curHymc=' + curHymc + '');
    $('#aDown3').attr('href', 'xxlist.html?' + 'curLmbh=103001&curLmmc=联系我们&curHyid=' + curHyid + '&curHymc=' + curHymc + '');
    $('#aDown4').attr('href', 'my.html?' + 'curHyid=' + curHyid + '&curHymc=' + curHymc + '');

    setLmmc(curLmbh);
    */
}
function  query_and_show_list(){
   // alert("query_and_show_list");
    $.ajax({
        type: 'post',
        url: resfulURL + 'app/wzxx/list?lmid=002',
        async: true, // 使用同步方式
        data: JSON.stringify({
            "pageno": "1",
            "pagesize":"200",
            "orderby":"wzxh desc",
            "flist":"*",
            "con":{
                "lmid": "002"
            },
            "extcon":"1=1"
        }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            //$('#result').text(data.result);
            console.log(response);
            //console.log(response.data);
            var dt_list = response.data;
            //ShowCartlist(curHyid, curHymc, dataTableCartlist);
            //var curHyid = $('#divHyid').html();
            show_list(dt_list);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log("访问服务器失败1:"+XMLHttpRequest.status+XMLHttpRequest.readyState);
            console.log("访问服务器失败2:"+textStatus);
            //console.log("访问服务器失败3:"+errorThrown);

            alert('访问服务器失败');
        }
    });


}
function show_list(dataTableWzxx){
    //

    var s_html = '';

    var wzid_perior="";
    var wzid_cur="";
    for (var i = 0; i < dataTableWzxx.length; i++) {

        wzid_cur=dataTableWzxx[i].wzid;

        if( wzid_perior==wzid_cur){
            continue;
        }
        //console.log(dataTableSpfl[i].flid + dataTableSpfl[i].flmc);
        var s = '';
        var zwnr= dataTableWzxx[i].zwnr;
        //console.log(zwnr);
        zwnr=get_db_val(zwnr);
        zwnr=zwnr.replace(/\/cms\/kindeditor/g,"../../cms/kindeditor");
        console.log(zwnr);
        //alert(zwnr);



        <!--begin 单个信息 -->
       s+="  <div class=\"weui-cell weui-cell_swiped\">";
        s+="       <div class=\"weui-cell__bd\">";
        s+="       <div class=\"weui-cell\">";
        s+="       <table  class=\"cart-table-onespxx\" >";
        s+="      <tr>";
        s+="      <td style=\"width:100px\">";
        s+="     <img class=\"cart_img_spxx\"  src=\"../../zppic/" + dataTableWzxx[i].wztp+ "\" style=\"height:80px;width:80px;\"/>";
        s+="     </td>";

        s+="     <td style=\"vertical-align:top; text-align:left;\">";
        s+="     <p style=\" \">"+dataTableWzxx[i].zwbt+"</p>";

        s+=" <p style=\"font-size:13px;\">"+zwnr+"</p>";

        s+="</td>";
        s+="</tr>";
        s+="</table>";
        s+="</div>";
        s+=" </div>";
        s+="</div>";
        <!--end 单个信息 -->


















        /*
        s+='<div class="weui-cell weui-cell_swiped">';
        s+='          <div class="weui-cell__bd">';
        s+='              <div class="weui-cell">';
        s+='                  <table  class="cart-table-onespxx" >';
        s+='                      <tr>';
        s+='                          <td style="width:30%">';
        s += '                              <img class="cart_img_spxx"  src="../../zppic/' + dataTableWzxx[i].fjwj+ '" style="height:200px;border:1px solid #eee;"/>';
        s+='                          </td>';
        s+='                      </tr>';
        s+='                      <tr>';
        s+='                          <td >';


        //s += '                              <a class="cart_div_spxx" href="xxdetail.html?curWzid=' + dataTableWzxx[i].wzid + '&curZwbt=' + dataTableWzxx[i].zwbt + '&curHyid=' + curHyid + '&curHymc=' + curHymc + '" >';
        s += '' + dataTableWzxx[i].zwbt + '<br/>';
        s += '' + zwnr + '<br/>';
        //s+='                              </a>';


        s+='                          </td>';
        s+='                      </tr>';
        s+='                  </table>';
        s+='              </div>';
        s+='          </div>';
        s+='   </div>';
        s+='';
      */
        s_html += s;

        wzid_perior=wzid_cur;
    }
    $('#divXxlist').html(s_html);
}

function setLmmc(curLmbh) {
    var sqlSelect = 'select zwbt from cms_lmxx  where lmbh=\'' + curLmbh + '\' '
    //alert(sqlSelect);
    $.ajax({
        type: 'post',
        url: serverURL + 'querySql.ashx',
        async: true, // 使用同步方式
        data: JSON.stringify({
            sql: sqlSelect
        }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            //$('#result').text(data.result);
            console.log(response);
            console.log(response.data);
            var dataTable = response.data;
            //alert(dataTable[0].lmmc);
            
            $('#divHeadTitle').html(dataTable[0].zwbt);

        },
        error: function (errorinfo) {
            alert('访问服务器失败');
        }
    });
}
    //curLmmc = decodeURIComponent(curLmmc);
    //$('#divHeadTitle').html(curLmmc);

function queryAndShowXxlist(curHyid, curHymc, curLmbh, curLmmc) {
    var sqlSelect = 'select *,dbo.getpic2(wzid) as zpwj from cms_wzxx where  lmid in (select lmid from cms_lmxx where lmbh=\'' + curLmbh + '\') order by wzbh'
    //alert(sqlSelect);

    //debugger;
    $.ajax({
        type: 'post',
        url: serverURL + 'querySql.ashx',
        async: true, // 使用同步方式
        data: JSON.stringify({
            sql: sqlSelect
        }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            //$('#result').text(data.result);
            console.log(response);
            console.log(response.data);
            var dataTableWzxx = response.data
            ShowXxlist(curHyid, curHymc, dataTableWzxx);

            //alert('登陆成功', 'success');
            //curHyid = response.data[0].hyid;
            //curHymc = response.data[0].bz02;
            //location = 'home.html?curHyid=' + curHyid + '&curHymc=' + curHymc;


        },
        error: function (errorinfo) {
            alert('访问服务器失败');
        }
    });
}

function ShowXxlist(curHyid, curHymc, dataTableWzxx) {

    var s_html = '';

    var wzid_perior="";
    var wzid_cur="";
    for (var i = 0; i < dataTableWzxx.length; i++) {

        wzid_cur=dataTableWzxx[i].wzid;

        if( wzid_perior==wzid_cur){
            continue;
        }

        //console.log(dataTableSpfl[i].flid + dataTableSpfl[i].flmc);
        var s = '';
         

        s+='<div class="weui-cell weui-cell_swiped">';
        s+='          <div class="weui-cell__bd">';
        s+='              <div class="weui-cell">';
        s+='                  <table  class="cart-table-onespxx" >';
        s+='                      <tr>';
        s+='                          <td style="width:30%">';
        s += '                              <img class="cart_img_spxx"  src="../../zppic/' + dataTableWzxx[i].zpwj+ '" style="height:200px;"/>';
      s+='                          </td>';
      s+='                      </tr>';
      s+='                      <tr>';
      s+='                          <td >';
      s += '                              <a class="cart_div_spxx" href="xxdetail.html?curWzid=' + dataTableWzxx[i].wzid + '&curZwbt=' + dataTableWzxx[i].zwbt + '&curHyid=' + curHyid + '&curHymc=' + curHymc + '" >';
      s += '' + dataTableWzxx[i].zwbt + '';
      s+='                              </a>';
      s+='                          </td>';
      s+='                      </tr>';
      s+='                  </table>';
      s+='              </div>';
      s+='          </div>';
      s+='   </div>';
      s+='';  
         
        s_html += s;
        wzid_perior=wzid_cur;
    }
    $('#divXxlist').html(s_html);
}
/*
$('#btnSubmitOrder').click(function () {
    //$(this).parents('.weui-cell').remove()
    location='order.html'
})


$('.close-swipeout').click(function () {
    $(this).parents('.weui-cell').swipeout('close')
})


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
*/