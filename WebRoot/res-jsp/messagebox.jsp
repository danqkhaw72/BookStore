<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div id="myModal_yes" class="modal hide fade">
	<div class="modal-header">
    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    	<h3>Nhắc nhở</h3>
  	</div>
	<div class="modal-body">
	</div>
	<div class="modal-footer">
    	<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
  </div>
</div>
<div id="myModal_no" class="modal hide fade">
	<div class="modal-header">
    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    	<h3>Nhắc nhở</h3>
  	</div>
	<div class="modal-body">
	</div>
	<div class="modal-footer">
    	<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
  </div>
</div>
<script type="text/javascript"> 
$(function() {
	(function($) {
		$.getUrlParam = function(name) {
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
			var r = window.location.search.substr(1).match(reg);
			if (r != null)
				return unescape(r[2]);
			return null;
		};
	})(jQuery);
	var returnvar = $.getUrlParam('return');
	if(returnvar!==null)
	{
		if(returnvar == 1) {
			if($("title").html()=="添加图书-图书管理")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#1EB9EE"+">Success!</h4>");
				$('#myModal_yes').modal();}
			if($("title").html()=="添加电子书-图书上架")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#1EB9EE"+">Success!</h4>");
				$('#myModal_yes').modal();}
			if($("title").html()=="添加图书详细信息-图书上架")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#1EB9EE"+">Success!</h4>");
				$('#myModal_yes').modal();}
			if($("title").html()=="用户管理-书城管理")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#1EB9EE"+">Success!</h4>");
				$('#myModal_yes').modal();}
		}if(returnvar == 0){
			if($("title").html()=="添加图书-图书上架")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#FF0033"+">Success!</h4>");
				$('#myModal_no').modal();}
			if($("title").html()=="添加电子书-图书上架")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#FF0033"+">Success!</h4>");
				$('#myModal_no').modal();}
			if($("title").html()=="添加图书详细信息-图书上架")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#FF0033"+">Success!</h4>");
				$('#myModal_no').modal();}
			if($("title").html()=="用户管理-书城管理")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#FF0033"+">Success!</h4>");
				$('#myModal_no').modal();}
		}
	}
	var edit = $.getUrlParam('edit');
	if(edit!==null)
	{
		if(edit==1)
		{
			if($("title").html()=="所有图书管理")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#1EB9EE"+">Sucess!</h4>");
				$('#myModal_yes').modal();}
		}
	}
});
</script>