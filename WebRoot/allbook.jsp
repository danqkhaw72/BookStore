<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "
<html lang="en">
<head>
<base href="<%=basePath%>">
<title>BookStore</title>
<link href="res/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="res/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="res/mycss/home.css"  rel="stylesheet">
<link href="res/mycss/allbook.css" rel="stylesheet">
<jsp:include page="res-jsp/web_ico.jsp"/>
</head>
<body>
	<jsp:include page="res-jsp/navigation.jsp"/>
	<div class="row">
		<div class="myspan">
			<table class="table">
				<col width="120px">
				<thead>
					<tr>
						<th>Tìm Kiếm Sách</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Tiêu đề:</td>
						<td>
							<form class="form-search" action="bookname" method="post">
								<input type="text" class="input-medium search-query" name="bookname" id="bookname">
								<button type="submit" class="btn">Find</button>
							</form>
						</td>
						<td>Tác giả:</td>
						<td>
							<form class="form-search" action="author" method="post">
								<input type="text" class="input-medium search-query" name="author" id="author">
								<button type="submit" class="btn">Find</button>
							</form>
						</td>
						<td>Loại sách:</td>
						<td>
							<form class="form-search" action="bookclass" method="post">
									<select name="classid" class="class-select search-query" style="outline: medium none;">
										<option value="A"<c:if test="${ search_classid == 'A' }"> selected="selected"</c:if>>Mac-Lenin</option>
										<option value="B"<c:if test="${ search_classid == 'B' }"> selected="selected"</c:if>>Triết Học</option>
										<option value="C"<c:if test="${ search_classid == 'C' }"> selected="selected"</c:if>>Khoa Học Xã Hội</option>
										<option value="D"<c:if test="${ search_classid == 'D' }"> selected="selected"</c:if>>Chính trị</option>
										<option value="E"<c:if test="${ search_classid == 'E' }"> selected="selected"</c:if>>Quân đội</option>
										<option value="F"<c:if test="${ search_classid == 'F' }"> selected="selected"</c:if>>Kinh tế</option>
										<option value="G"<c:if test="${ search_classid == 'G' }"> selected="selected"</c:if>>Giaso dục</option>
										<option value="H"<c:if test="${ search_classid == 'H' }"> selected="selected"</c:if>>Ngôn Ngữ</option>
										<option value="I"<c:if test="${ search_classid == 'I' }"> selected="selected"</c:if>>Văn Học</option>
										<option value="J"<c:if test="${ search_classid == 'J' }"> selected="selected"</c:if>>Nghẹ thuật</option>
										<option value="K"<c:if test="${ search_classid == 'K' }"> selected="selected"</c:if>>Lịch sử</option>
										<option value="N"<c:if test="${ search_classid == 'N' }"> selected="selected"</c:if>>Khoa Học tự nhiên</option>
										<option value="O"<c:if test="${ search_classid == 'O' }"> selected="selected"</c:if>>Toán Học</option>
										<option value="P"<c:if test="${ search_classid == 'P' }"> selected="selected"</c:if>>Thiên Văn</option>
										<option value="Q"<c:if test="${ search_classid == 'Q' }"> selected="selected"</c:if>>Sinh học</option>
										<option value="R"<c:if test="${ search_classid == 'R' }"> selected="selected"</c:if>>Y học</option>
										<option value="S"<c:if test="${ search_classid == 'S' }"> selected="selected"</c:if>>Nong nghiệp</option>
										<option value="T"<c:if test="${ search_classid == 'T' }"> selected="selected"</c:if>>Công nghiệp</option>
										<option value="U"<c:if test="${ search_classid == 'U' }"> selected="selected"</c:if>>Giao thông</option>
										<option value="V"<c:if test="${ search_classid == 'V' }"> selected="selected"</c:if>>Hàng không</option>
										<option value="X"<c:if test="${ search_classid == 'X' }"> selected="selected"</c:if>>Môi trường</option>
										<option value="Z"<c:if test="${ search_classid == 'Z' }"> selected="selected"</c:if>>Sách tổng hợp</option>
									</select>
								<button type="submit" class="btn">Find</button>
							</form>
						</td>
						
					</tr>
					
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
			<hr class="featurette-divider divider">
			<div>
				<c:import url="/allbook_table"/>
			</div>
		</div>
	</div>
	
<jsp:include page="res-jsp/footer.jsp"/>
<script type="text/javascript" src="res/js/validation/jquery.validate.min.js"></script>
<script language="JavaScript" type="text/javascript"> 
function GetUrlParms()    
{
    var args=new Object();   
    var query=location.search.substring(1);  
    var pairs=query.split("?"); 
    for(var   i=0;i<pairs.length;i++)   
    {
        var pos=pairs[i].indexOf('='); 
        if(pos==-1)   continue;   
        var argname=pairs[i].substring(0,pos); 
        var value=pairs[i].substring(pos+1);  
        args[argname]=unescape(value);   
    }
    return args;
}
var args = new Object();
args = GetUrlParms();
if(args["return"]!=undefined)
{
	var value1 = args["return"] ;
	if(value1==00){
		alert("Sách đã được thêm vào mục yêu thích！");
	}
}

/* $(function(){
	$(".favorites").click(function(){
		$.post("addfavoriteAjax", {bookid: $(this).find('input[class*=bookid]').val()});
	});
}); */
</script>
<script type="text/javascript">
$(document).ready(function(){
	$(".thumbs").hover(function(){
		$(this).animate({ height:'220px', width:'220px'}, "fast");
		},function(){
		$(this).animate({ height:'200px', width:'200px'}, "fast");
		$(this).finish();
	});
});

$(function(){
	$("#bookname").blur(function(){
		$(this).val($("#bookname").val().replace(/(^\s+)|(\s+$)/g, ""));
	});
});
$(function(){
	$("#author").blur(function(){
		$(this).val($("#author").val().replace(/(^\s+)|(\s+$)/g, ""));
	});
});
$(function(){ 
	$("#unitprice1").blur(function(){
		$(this).val($("#unitprice1").val().replace(/(^\s+)|(\s+$)/g, ""));
	});
});
$(function(){
	$("#unitprice2").blur(function(){
		$(this).val($("#unitprice2").val().replace(/(^\s+)|(\s+$)/g, ""));
	});
}); 
</script>
</body>
</html>