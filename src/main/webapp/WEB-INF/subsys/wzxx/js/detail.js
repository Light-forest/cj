var _fuid='';
$(document).ready(function() {
   //_fuid=request.QueryString('_fuid');
   //alert(_fuid);
   //set_table_style('id_table_detail');
});

function goto_last(){
	history.go(-1);

}
function close_self(){
	 window.open('','_parent','');
	 window.close();
}

