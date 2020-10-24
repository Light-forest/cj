init();
function init() {
    init_hmdxx();
}
function init_hmdxx() {
    $.ajax({
        type: 'post',
        url: resfulURL + 'app/bmxx/list_hmd',
        async: true, // 使用同步方式
        data: JSON.stringify({
            "pageno": "1",
            "pagesize":"200",
            "orderby":"bmsj desc",
            "flist":"*",
            "con":{
                "sfhmd":"是"
            },
            "extcon":"1=1"
        }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            console.log(response);
            var dt_list = response.data;
            show_list_hmdxx(dt_list);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log("访问服务器失败1:"+XMLHttpRequest.status+XMLHttpRequest.readyState);
            console.log("访问服务器失败2:"+textStatus);
            //console.log("访问服务器失败3:"+errorThrown);
            alert('访问服务器失败');
        }
    });

}

function  show_list_hmdxx(dt) {
    var s_html = '';
    for (var i = 0; i < dt.length; i++) {
        var s = '';
        <!--begin 单个信息 -->
         s+='   <div class="weui-cell weui-cell_swiped">';
         s+='   <div class="weui-cell__bd">';
         s+='   <div class="weui-cell">';
         s+='   <table style="width:100%;">';
         s+='   <tbody>';
         s+='   <tr>';
         s+='   <td style="width:70px;">';
         s+='   <img src="images/avatar.jpg" style="width:60px;height:60px; border-radius:50px">';
         s+='   </td>';
         s+='   <td style="padding-left:10px; text-align:left;font-weight:bold; ">';
         s+='   <h6>';
         s+='   '+dt[i].yxjsm+'';
         s+='   </h6>';
         s+='   </td>';
         s+='   <td style="text-align:left;padding-right:20px;width:180px;">';
         s+='   <h6>';
         s+='   拉黑原因：<span style="color:red;font-weight:bold;">'+dt[i].rhyy+'</span>';
         s+='   </h6>';
         s+='   </td>';
         s+='   </tr>';
         s+='   </tbody>';
         s+='   </table>';
         s+='   </div>';
         s+='   </div>';
         s+='   </div>';

        s_html += s;

    }
   // alert(s_html);
    $('#divXxlist').html(s_html);
}
