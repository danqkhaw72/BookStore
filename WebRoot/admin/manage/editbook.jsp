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
<title>Sửa Sách - Quản Lý Sách</title>
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="res/mycss/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<link href="res/mycss/addbookdetail.css" rel="stylesheet">
<jsp:include page="${basePath}/res-jsp/web_ico.jsp" />
</head>
<body>
 	<jsp:include page="top.jsp"/>
 	<div class="row">
		 <div class="myspan">
	    	<form action="updatebook" method="post" class="form-horizontal" >
				<div id="legend" class="">
					<legend>Chỉnh sửa thông tin sách</legend>
				</div>
				<div class="control-group">
					<label class="control-label">Mã sách：</label>
					<div class="controls">
						<input type="text" name="bookid" value="${ book.bookid }"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Tên sách：</label>
					<div class="controls">
						<input type="text" name="bookname"  value="${ book.bookname }"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Gía：</label>
						<div class="controls">
						<input type="text" name="unitprice"  value="${ book.unitprice }"
						onkeyup="value=value.replace(/\.\d{2,}$/,value.substr(value.indexOf('.'),3))"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Tác giả：</label>
						<div class="controls">
						<input type="text" name="author"  value="${ book.author }"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">NXB：</label>
					<div class="controls">
						<input type="text" name="publisher"  value="${ book.publisher }"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Loại sách：</label>
					<div class="controls">
						<select name="classid">
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
					</div>
				</div>
				<div class="control-group">
						<label class="control-label">Tái bản lần thứ：</label>
						<div class="controls">
							<select name="edition">
								<option <c:if test="${ bookdetail.edition == '1' }"> selected="selected"</c:if>>1</option>
								<option <c:if test="${ bookdetail.edition == '2' }"> selected="selected"</c:if>>2</option>
								<option <c:if test="${ bookdetail.edition == '3' }"> selected="selected"</c:if>>3</option>
								<option <c:if test="${ bookdetail.edition == '4' }"> selected="selected"</c:if>>4</option>
								<option <c:if test="${ bookdetail.edition == '5' }"> selected="selected"</c:if>>5</option>
								<option <c:if test="${ bookdetail.edition == '6' }"> selected="selected"</c:if>>6</option>
								<option <c:if test="${ bookdetail.edition == '7' }"> selected="selected"</c:if>>7</option>
								<option <c:if test="${ bookdetail.edition == '8' }"> selected="selected"</c:if>>8</option>
								<option <c:if test="${ bookdetail.edition == '9' }"> selected="selected"</c:if>>9</option>
								<option <c:if test="${ bookdetail.edition == '10' }"> selected="selected"</c:if>>10</option>
							</select>
						</div>

					</div>
					<div class="control-group">
						<label class="control-label">Gói hàng：</label>
						<div class="controls">
							<label class="radio inline">
								<input type="radio" value="Bìa mềm" name="packaging" 
								<c:if test="${ bookdetail.packaging == '平装' }"> checked="checked"</c:if>>Bìa mềm
							</label>
							<label class="radio inline">
								<input type="radio" value="Bìa cứng" name="packaging"
								<c:if test="${ bookdetail.packaging == '精装' }"> checked="checked"</c:if>>Bìa cứng
							</label>
							
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Định dạng：</label>
						<div class="controls">
							<label class="radio inline">
								<input type="radio" value="16" name="format" 
								<c:if test="${ bookdetail.format == '16' }"> checked="checked"</c:if>>16
							</label>
							<label class="radio inline">
								<input type="radio" value="32" name="format"
								<c:if test="${ bookdetail.format == '32' }"> checked="checked"</c:if>>32
							</label>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Số trang：</label>
						<div class="controls">
							<input type="text" name="numpages" value="${bookdetail.numpages }">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Ngày xuất bản：</label>
						<div class="controls">
							<input type="text" name="publdata" readonly class="publdata" value="${bookdetail.publdata }">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Ngôn ngữ：</label>
						<div class="controls">
							<select name="language">
								
								<option>Tiếng Anh</option>
								<option>Tiếng Pháp</option>
								<option>Tiếng Hàn</option>
								<option>Tiếng Nhật</option>
								<option>Khác</option>
							</select>
						</div>

					</div>
					<!--  
					<div class="control-group mydiv">
						<label class="control-label ">Thông tin Tác giả：</label>
						<div class="controls">
							<div class="textarea">
								<textarea class="" name="authorsIntroduce"
									style="margin: 0px; height: 80px; width: 800px;">${bookdetail.authorsIntroduce }</textarea>
							</div>
						</div>
					</div>

					<div class="control-group mydiv">
						<label class="control-label">Giới thiệu sách：</label>
						<div class="controls">
							<div class="textarea">
								<textarea class="" name="contentIntroduce"
									style="margin: 0px; height: 80px; width: 800px;">${bookdetail.contentIntroduce }</textarea>
							</div>
						</div>
					</div>
					<div class="control-group mydiv">
						<label class="control-label">Mục lục：</label>
						<div class="controls">
							<div class="textarea">
								<textarea class="" name="directory"
									style="margin: 0px; width: 800px; height: 80px;">${bookdetail.directory }</textarea>
							</div>
						</div>
					</div>
					<div class="control-group mydiv" >
						<label class="control-label">Lời nói đầu：</label>
						<div class="controls">
							<div class="textarea">
								<textarea class="" name="preface"
									style="margin: 0px; width: 800px; height: 80px;">${bookdetail.preface }</textarea>
							</div>
						</div>
					</div>
					-->
				<div class="control-group mydiv">
					<label class="control-label">Nhận xét：</label>
					<div class="controls">
						<textarea id="summary" name="summary" 
						style="margin: 0px; width: 800px; height: 80px;">${book.summary }</textarea>
					</div>
				</div>
				<div class="control-group mydiv">
					<div class="controls  right_b">
						<input type="submit" value="Sửa" class="btn btn-success btn-large"/>
					</div>
				</div>
			</form>
	     </div>
    </div>
<jsp:include page="${basePath}/res-jsp/footer01.jsp"/>
<script type="text/javascript" src="res/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="res/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script type="text/javascript" src="res/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="res/js/validation/additional-methods.js"></script>
<script type="text/javascript" src="res/js/validation/my-form-bookmanage-validation.js"></script>
<script type="text/javascript">
    $(".publdata").datetimepicker({format: 'yyyy-mm-dd',
    	autoclose: true, todayBtn: true, minView:2, startDate:1900-01-01,
    	startView:4,language:'zh-CN'});
</script>    
</body>
</html>

