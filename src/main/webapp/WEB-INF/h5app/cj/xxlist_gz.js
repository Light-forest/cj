﻿init();
function init() {

}
function  query_and_show_list(){
   // alert("query_and_show_list");
    $.ajax({
        type: 'post',
        url: resfulURL + 'app/wzxx/list?lmid=001',
        async: true, // 使用同步方式
        data: JSON.stringify({
            "pageno": "1",
            "pagesize":"200",
            "orderby":"wzxh",
            "flist":"*",
            "con":{
                "lmid": "001"
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
        //console.log(zwnr);
        //alert(zwnr);

        var wztp=dataTableWzxx[i].wztp;
        console.log(wztp);

        s+='<div class="weui-cell weui-cell_swiped">';
        s+='          <div class="weui-cell__bd">';
        s+='              <div class="weui-cell">';
        s+='                  <table  sytle="width:100%;" >';
        s+='                      <tr>';
        s+='                          <td style=" ">';
        s+='                              <img class="cart_img_spxx"  src="../../zppic/';
        s+='' + wztp;
        s+='' + '" style="height:200px;width:100%;border:1px solid #eee;"/>';

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


        //alert(s);

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