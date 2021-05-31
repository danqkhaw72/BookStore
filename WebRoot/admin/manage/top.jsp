<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%> 
<%	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="top-nav">
	<div class="logo">
		<a href="<%=basePath %>index.jsp" >
			<img border="0" src="res/images/avatar.png" width="50" height="50">
			<span class="booklogo">BookStore</span>
		</a>
	</div>
	<div class="top-nav-a">
		<ul class="nav nav-pills">
	  		<li class="top_active">
	  			<a href="admin/manage/managebook.jsp">Quản Lý Sách</a>
	  		</li>
	  		
	  		<li class="top_active">
	  			<a href="admin/manage/book.jsp">Thêm sách mới</a>
	  		</li>
	  		
	  		
		</ul>
	</div>
	<div class="trigger">
		<c:if test="${sessionScope['_user'] != null}">
		   <a href="userinformation?temp=1" class="dropdown-toggle">${sessionScope['_user'].name}</a>
		</c:if>	
	</div>
</div>