<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="navbar-wrapper">
	<div class="container">
		<div class="navbar navbar-default">
			<div class="navbar-inner">
				<a class="brand" href="index.jsp">
				 	<img src="res/images/avatar.png" width="40" height="40">BookStore
				</a>
				<div class="nav-collapse collapse">
					<ul class="nav pull-right">
   						<c:if test="${sessionScope['_user'] == null}">
    						<li><a href="login.jsp">Đăng Nhập</a></li>
    						<li><a href="register.jsp">Đăng Ký</a></li>
	    				</c:if>
		    			<c:if test="${sessionScope['_user'] != null}">
			  				<li class="dropdown">
				    			Xin chào, <button class="dropbtn">${sessionScope['_user'].name}<b class="caret"></b></button>
   								<ul class="dropdown-menu">
    								<li><a href="userinformation?temp=1">Thong tin</a></li>
    								<c:if test="${sessionScope['_user'].permission == 1 }">
		    							<li class="divider"></li>
		    							<li><a href="admin/manage/managebook.jsp">Quản lý</a></li>
		    						</c:if>
	    							<li class="divider"></li>
		    						<li><a href="exitlogin?return=0" class="exit1">Đăng Xuất</a></li>
		    						
			    				</ul>
							</li>
						</c:if>    
					</ul>    
				    <ul class="nav h_n">
					  	<li class=""><a href="index.jsp">Trang Chủ</a></li>
						<li class=""><a href="allbook.jsp">Tất Cả Sách</a></li>
						
						<li class=""><a href="#">Phản Hồi</a></li>
						<li><a href="#">Liên Hệ</a></li>
						<li><a href="#">Trợ Giúp</a></li>
						
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>