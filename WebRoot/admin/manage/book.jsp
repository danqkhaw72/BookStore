<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<title>Thêm Sách</title>
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="res/mycss/top.css" rel="stylesheet">
<jsp:include page="${basePath}/res-jsp/web_ico.jsp" />
</head>
<body>
 	<jsp:include page="top.jsp"/>
 	<div class="row">
		 <div class="myspan">
		    <form action="uploadbookimage" method="post" enctype="multipart/form-data" class="form-horizontal" >
				<div id="legend" class="">
					<legend>Thêm sách</legend>
				</div>
				<div class="control-group">
					<label class="control-label">Mã sách：</label>
					<div class="controls">
						<input type="text" name="bookid" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Tên sách：</label>
					<div class="controls">
						<input type="text" name="bookname"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Gía bán：</label>
					<div class="controls">
						<input type="text" name="unitprice"
						onkeyup="value=value.replace(/\.\d{2,}$/,value.substr(value.indexOf('.'),3))"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Tác giả：</label>
					<div class="controls">
						<input type="text" name="author"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Nhà xuất bản：</label>
					<div class="controls">
						<input type="text" name="publisher" data-provide="typeahead" data-items="5" autocomplete="off" id="publisher"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Thể loại sách：</label>
					<div class="controls">
						<select name="classid">
							<option value="0">Chọn loại sách</option>
							<option value="A">Mac-Lenin</option>
							<option value="B">Triết Học</option>
							<option value="C">Khoa Học Xã Hội</option>
							<option value="D">Chính trị</option>
							<option value="E">Quân đội</option>
							<option value="F">Kinh tế</option>
							<option value="G">Giaso dục</option>
							<option value="H">Ngôn Ngữ</option>
							<option value="I">Văn Học</option>
							<option value="J">Nghẹ thuật</option>
							<option value="K">Lịch sử</option>
							<option value="N">Khoa Học tự nhiên</option>
							<option value="O">Toán Học</option>
							<option value="P">Thiên Văn</option>
							<option value="Q">Sinh học</option>
							<option value="R">Y học</option>
							<option value="S">Nong nghiệp</option>
							<option value="T">Công nghiệp</option>
							<option value="U">Giao thông</option>
							<option value="V">Hàng không</option>
							<option value="X">Môi trường</option>
							<option value="Z">Sách tổng hợp</option>							
						</select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Mô tả</label>
					<div class="controls">
						<div class="textarea">
							<textarea name="summary" class="clear-blank"
								style="margin: 0px; height: 80px; width: 208px;"> </textarea>
						</div>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Ảnh bìa sách:</label>
					<div class="controls">
						<div class="box">
						    <input type="text" name="copyFile"  class="textbox" />
						        <a href="javascript:void(0);"  class="btn">Chọn</a>
						    <input type="file" class="uploadFile" name="upload" onchange="getFile(this,'copyFile')" id="upload"
						    accept=".jpg,.png,.gif"/>
						</div>
					</div>
				</div>
				<div>
					<div class="controls  right_b">
						<input type="submit" value="Thêm" class="btn btn-success btn-large"/>
					</div>
				</div>
			</form>
		 </div>
    </div>
<jsp:include page="${basePath}/res-jsp/footer01.jsp"/>
<script type="text/javascript" src="res/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="res/js/validation/additional-methods.js"></script>
<script type="text/javascript" src="res/js/validation/my-form-bookmanage-validation.js"></script>
<jsp:include page="${basePath}/res-jsp/messagebox.jsp"/>
<script type="text/javascript">

	function getFile(obj,inputName){
		var file_name = $(obj).val();  
		$("input[name='"+inputName+"']").val(file_name);
	}

var subjects = ['NXB Quốc Gia', 'NXB Kim Đông', 'NXB Đại học Huế', 'NXB Kim Anh']; 
$('#publisher').typeahead({source: subjects});
</script>
</body>
</html>
