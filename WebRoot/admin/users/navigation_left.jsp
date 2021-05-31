<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="navbar-inner">
	<dl class="my-left-nav">
    	<dd class="top_active">
      		<a href="userinformation?temp=1">
      		 Thông tin cá nhân
      		 <i class="icon-chevron-right"></i></a>
      	</dd>
      	<dd class="top_active">
      		<a href="admin/users/shoppingcart.jsp">
      		Giỏ hàng
      		 <i class="icon-chevron-right"></i></a>
      	</dd>
      	
      	<dd class="top_active">
      		<a href="userinformation?temp=0">
      		 Điền thông tin cá nhân
      		 <i class="icon-chevron-right "></i></a>
      	</dd>
      	<dd class="top_active">
          	<a href="admin/users/orderform.jsp">
          	Thông tin đơn hàng
          	<i class="icon-chevron-right "></i></a>
        </dd>
        <dd class="top_active">
          	<a href="admin/users/changepassword.jsp">
          	Đổi mật khẩu
          	<i class="icon-chevron-right "></i></a>
        </dd>
   </dl>
  </div>
