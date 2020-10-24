
init();
function init() {
	
	
    //var curHyid = request.QueryString("curHyid");
   // var curHymc = request.QueryString("curHymc");
   // document.getElementById("curHyid").value = curHyid;
   // document.getElementById("curHymc").value = curHymc;
   // if ((curHyid == null) || (curHyid === '')) {
  //      alert('请先注册登陆，然后进入本功能！');
   //     location = 'login.html';
   // }

   // $("#aCart").attr('href', 'cart.html?curHyid=' + curHyid + '&curHymc=' + curHymc );  
   // initSearchInput(curHyid,curHymc);
   // initPlayPic(curHyid);
   // queryAndShowSpfl(curHyid, curHymc);

    $('#aA').attr('href', 'xxlist_gz.html');
    $('#aB').attr('href', 'xxlist_jj.html');
    $('#aC').attr('href', 'xxlist_rs.html');
    $('#aD').attr('href', 'xxlist_jg.html');
    $('#aE').attr('href', 'xxlist_hmd.html');


    /*
     $('#aDown1').attr('href', 'home.html?' + 'curHyid=' + curHyid + '&curHymc=' + curHymc + '');
     $('#aDown2').attr('href', 'xxlist.html?' + 'curLmbh=102001&curLmmc=售后服务&curHyid=' + curHyid + '&curHymc=' + curHymc + '');
     $('#aDown3').attr('href', 'xxlist.html?' + 'curLmbh=103001&curLmmc=联系我们&curHyid=' + curHyid + '&curHymc=' + curHymc + '');
     $('#aDown4').attr('href', 'my.html?' + 'curHyid=' + curHyid + '&curHymc=' + curHymc + '');
     */
	
    $('#aDown1').attr('href', 'home.html');
    $('#aDown2').attr('href', 'bm.html');
    $('#aDown3').attr('href', 'wd.html');
    $('#aDown4').attr('href', 'my.html');

    $(".swiper-container").swiper({
                loop: true,
                autoplay: 2000
    }); 

   
   
    /*
    if (val === 'tab1') { // 首页
        this.$router.push({path: '/home/', query: { 'curHyid': this.curHyid, 'curHymc': this.curHymc }})
      } else if (val === 'tab2') {
        // 售后服务
        this.$router.push({path: '/xxlist/', query: { 'curLmbh': '102001', 'curLmmc': '售后服务', 'curHyid': this.curHyid, 'curHymc': this.curHymc }})
      } else if (val === 'tab3') {
        // 联系我们
        this.$router.push({path: '/xxlist2/', query: {'curLmbh': '103001', 'curLmmc': '联系我们', 'curHyid': this.curHyid, 'curHymc': this.curHymc}})
      } else if (val === 'tab4') {
        // 我
        this.$router.push({path: '/my/', query: {'curHyid': this.curHyid, 'curHymc': this.curHymc}})
      }
      */
}


function initPlayPic(curHyid) {
    //  debugger;
    $.ajax({
        type: 'post',
        //url: serverURL + 'querySql.ashx',
        url: 'home_playpic.ashx',
        async: true, // 使用同步方式
        data: JSON.stringify({
            'curHyid': curHyid
        }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            //$('#result').text(data.result);
            //debugger;
            //console.log(response);
            //console.log(response.data); 
            //alert(response);
            var s = response;
            $('#div_swiper').html(s); 
            // 滚动图片
            $(".swiper-container").swiper({
                loop: true,
                autoplay: 2000
            }); 

        },
        error: function (errorinfo) {
            //console.log(errorinfo);
            console.log(errorinfo.responseText);
            //console.log(errorinfo.responseText.data);

            //alert(errorinfo.responseText.data);
            var s = errorinfo.responseText;
            //alert(s);
            $('#div_swiper').html(s);
            // 滚动图片
            $(".swiper-container").swiper({
                loop: true,
                autoplay: 2000
            });
            //alert('访问服务器失败:initPlayPic' + errorinfo);
        }
    }); 
  
}