<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="com.zh.process.RandomNumberGenerator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>Xac Minh Thong Tin Don Hang</title>
<link href="res/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="res/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="res/mycss/home.css" rel="stylesheet">
<link href="res/mycss/userorder.css" rel="stylesheet" >
<jsp:include page="${basePath}/res-jsp/web_ico.jsp"/>
</head>
<body>
 	<jsp:include page="${basePath}/res-jsp/navigation.jsp"/>
 	<div class="row">
 		<div class="myspan">
	 		<div class="current">
	 			<img alt="" src="images/w2.png">
	 		</div>
			<div class="myuser-order">
				<span class="tit-txt">Điền và kiểm tra thông tin đơn hàng ：</span>
				<form action="addorderform?temp=0" method="post"  class="form-horizontal" id="myform">
				<div class="checkout-steps">
					<div class="step-tit"><h5>Thông tin người nhận</h5></div>
						<div class="control-group shouName">
							<label class="control-label">Tên người nhận：</label>
							<div class="controls">
								<input type="text" name="receiver" id="receiver"/>
							</div>
						</div>
						<div class="control-group lian">
							<label class="control-label">SDT：</label>
							<div class="controls">
								<input type="text" name="contact"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Địa chỉ giao hàng：</label>
							<div class="controls">
								<input type="text" name="address" class="input-xxlarge"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Nhận xét：</label>
							<div class="controls">
								<textarea id="orderremark" name="orderremark" style="margin: 0px; height: 80px; width: 600px;"></textarea>
							</div>
						</div>
						
						<hr>
						<div class="step-tit"><h5>Phương thức thanh toán</h5></div>
						 <div class="payment-list">
							<div class="control-group">
						      <label class="radio inline">
						        <input type="radio" value="PayPal" name="pay" checked="checked">PayPal
						      </label>
						      <label class="radio inline">
						        <input type="radio" value="MoMo" name="pay">MoMo
						      </label>
						      <label class="radio inline">
						        <input type="radio" value="ATM" name="pay" >ATM Online
						      </label>
						      
							</div>
						</div>
							
						<hr>
						<div class="step-tit"><h5>Thông tin đơn hàng</h5></div>
							<c:import url="/goorder"/>
						<hr>
						<div class="step-tit"><h5>Thông tin hóa đơn</h5></div>
						<div class="invoice-cont">
							<span class="mr10"> Hóa đơn điện tử  </span>
						</div>
						
						<hr>
						
					</div>
					<div class="order-summary">
						<div><span>Tổng cộng： </span>$<strong><%=request.getAttribute("sum") %></strong></div>
						
						<div><span>Cước phí： </span>$<strong style="color:#F60;">&minus;<%=request.getAttribute("postage") %></strong></div>
						<div class="summary">
							<span class="yt">Tổng số tiền phải trả：</span>
							<div class="ee">$<strong class="sums"><%=request.getAttribute("sumA") %></strong></div>
						</div>
						<div class="tijiao">
							<input type="submit" value="Thanh Toan" class="btn btn-large btn-success"/>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
<jsp:include page="${basePath}/res-jsp/footer.jsp"/>
<script type="text/javascript" src="res/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="res/js/validation/additional-methods.js"></script>
<script type="text/javascript" src="res/js/validation/my-form-validation.js"></script>
<script type="text/javascript">
$(function(){
		$(".input-xxlarge").blur(function(){
			$(this).val($(".input-xxlarge").val().replace(/(^\s+)|(\s+$)/g, ""));
		});
	});
$(function(){
		$("#receiver").blur(function(){
			$(this).val($("#receiver").val().replace(/(^\s+)|(\s+$)/g, ""));
		});
	});
$(function(){
		$("#orderremark").blur(function(){
			$(this).val($("#orderremark").val().replace(/(^\s+)|(\s+$)/g, ""));
		});
	});
</script>
</body>
</html>
