init();
function init() {
    query_and_show_list();

}
function  query_and_show_list(){
    // alert("query_and_show_list");
    $.ajax({
        type: 'post',
        url: resfulURL + 'app/bsxx/list',
        async: true, // 使用同步方式
        data: JSON.stringify({
            "pageno": "1",
            "pagesize":"200",
            "orderby":"jssj desc",
            "flist":"*",
            "con":{

            },
            "extcon":"1=1"
        }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            console.log(response);
            var dt_list = response.data;
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
function show_list(dt){
    //

    var s_html = '';

    for (var i = 0; i < dt.length; i++) {
        var  bsqh=  dt[i].bsqh;
        var  zgrs=  dt[i].zgrs;
        var  bmrs=  dt[i].bmrs;
        var  syrs=zgrs-bmrs;
        var s = '';
        <!--begin 单个信息 -->
        s+="  <div class=\"weui-cell weui-cell_swiped\">";
        s+="       <div class=\"weui-cell__bd\">";
        s+="       <div class=\"weui-cell\">";
        s+="       <table  class=\"cart-table-onespxx\" >";
        s+="      <tr>";
        s+="      <td style=\"width:100px\">";
        //s+="     <img class=\"cart_img_spxx\"  src=\"../../zppic/" + dataTableWzxx[i].fjwj+ "\" style=\"height:80px;width:80px;\"/>";
        s+="     <img class=\"cart_img_spxx\" src=\"images/c"+ ((i+1) % 6) +".jpg\" style=\"height:80px;width:80px;\"/>";

        s+="     </td>";

        s+="     <td style=\"vertical-align:top; text-align:left;\">";
        s+="     <p style=\" \">"+bsqh+"</p>";

        s+=" <p style=\"font-size:13px;\">"
            +"共<span style=\"color:red\">"+ zgrs+"</span>个名额，已经报名<span style=\"color:red\">"
            + bmrs+"</span>人，还差<span style=\"color:red\">"+syrs+"</span>人开始比赛"
            +"</p>";

        s+="</td>";
        s+="</tr>";
        s+="</table>";
        s+="</div>";
        s+=" </div>";
        s+="</div>";
        <!--end 单个信息 -->
        s_html += s;
    }
    $('#divXxlist').html(s_html);
}
