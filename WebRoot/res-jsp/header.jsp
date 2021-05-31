<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav id="navbar" class="navbar navbar-expand-sm bg-dark navbar-dark">
		<h1 class="logo">
        	<span class="text-primary">
            <i class="fas fa-book-open"></i> Book</span>Store
    	</h1>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
		  <span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
			     <li class="nav-item"><a class="nav-link" href="index.jsp">Trang Chủ</a></li>
			     <li class="nav-item"><a class="nav-link" href="allbook.jsp">Tất Cả Sách</a></li>
			     
			     <li class="nav-item"><a class="nav-link" href="#">Phản Hồi</a></li>
			     <li class="nav-item"><a class="nav-link" href="#">Liên Hệ</a></li>
			     <li class="nav-item"><a class="nav-link" href="#">Trợ Giúp</a></li>			     
			</ul>
		  	<ul class="navbar-nav">
		        <c:if test="${sessionScope['_user'] == null}">
		         <li class="nav-item"><a class="nav-link" href="login.jsp">Đăng Nhập</a></li>
		         <li class="nav-item"><a class="nav-link" href="register.jsp">Đăng Ký</a></li>
		     	</c:if>
     			<c:if test="${sessionScope['_user'] != null}">
           			
             		
                	
	                	<li class="nav-item"><a class="nav-link" href="userinformation?temp=1">Thông tin</a></li>
		                <c:if test="${sessionScope['_user'].permission == 1 }">
		                
		                <li><a class="nav-link" href="admin/manage/managebook.jsp">Quản lý</a></li>
		                </c:if>
		                <li>Xin chào, ${sessionScope['_user'].name}</li>
		                <li><a class="nav-link" href="exitlogin?return=0" class="exit1">Đăng Xuất</a></li>                
             		
         			
     			</c:if>    
 			</ul>    
 
		</div>  
	  </nav>