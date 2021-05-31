<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.zh.bean.BookBean"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<title>Tìm kiếm</title>
<link href="res/bootstrap/css/bootstrap.css"  rel="stylesheet">
<link href="res/bootstrap/css/bootstrap-responsive.css"  rel="stylesheet">
<link href="res/mycss/home.css"  rel="stylesheet">
<link href="res/mycss/allbook.css"  rel="stylesheet">
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
					      <th>Tìm kiếm sách</th>
					    </tr>
					</thead>
					<tbody>
					<tr>
   						<td>Tiêu đề:</td>
   						<td>
   							<form class="form-search"  action="bookname" method="post">
   								<%! String s_bookname = ""; %>
   								<% if(request.getAttribute("search_bookname")!=null) s_bookname = (String)request.getAttribute("search_bookname");%>
							  <input type="text" class="input-medium search-query" name="bookname" value="<%= s_bookname%>" id="bookname">
							  <button type="submit" class="btn">Find</button>
							</form>
   						</td>
   						<td>Tác giả:</td>
   						<td>
   							<form class="form-search" action="author" method="post">
   								<%! String s_author = ""; %>
   								<% if(request.getAttribute("search_author")!=null) s_author = (String)request.getAttribute("search_author");%>
							  <input type="text" class="input-medium search-query" name="author" value="<%= s_author%>" id="author">
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
					
					
				</tbody>
			</table>
			<hr class="featurette-divider divider">
			<a href="allbook.jsp" style="text-decoration: none;">All book</a>&gt;&gt;
			<a href="javascript:history.go(0);" style="text-decoration: none;">Location</a>
			<div>
				<table class="table table-bordered">
					<col width="220px">
					<col width="220px">
					<col width="220px">
					<col width="220px">
					<col width="220px">
					<col>
					<tbody>
						<%! int j = 0; %>
						<%  List<BookBean> books = (List<BookBean>)request.getAttribute("books");
							
							for(BookBean i : books){ 
								j = j+1; %>
							
							<td class="mytd">
								<div class="myimg">
								<a href="bookinformation?bookid=<%= i.getBookid() %>">		
									<img class="thumbs" src="res/images/bookimage/<%= i.getBookimage() %>" width="200" height="200">
								</a>
								</div><br>
								<a style="text-decoration: none;">
									<h5><%= i.getBookname() %></h5>
									<span class="author"><%= i.getAuthor() %></span><br>
									<span class="unitprice">$<%= i.getUnitprice() %></span>
								</a>
								<a href="addshoppingcart?bookid=<%= i.getBookid() %>&quantity=1" class="btn btn-success">Add To Cart</a>
							</td>
							<% if(j%5==0){
								out.print("<tr></tr>");}%>
						<%} j=0;%>
					</tbody>
					
			</table>
			<% if(books.isEmpty())
							{	%>
								<img src="res/images/webico/sorry.png" width="1200" height="400">
							<%	}	%>
			</div>
		</div>
	</div>
<jsp:include page="res-jsp/footer.jsp"/>
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