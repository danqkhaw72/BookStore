<%@page import="com.zh.bean.Pagination"%>
<%@page import="com.zh.bean.BookBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table table-striped table-hover">
	<col width="150px">
	<col width="150px">
	<col width="120px">
	<col width="150px">
	<col width="60px">
	<col width="170px">
	<col width="120px">
	<col>
	<thead>
		<tr>
			<th>Mã sách</th>
			<th>Tên sách</th>
			<th>Tác giả</th>
			<th>NXB</th>
			<th>Đơn giá</th>
			<th>Mô tả</th>
			<th>Loại sách</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${requestScope.books}" var="i">
			<tr>
				<td><img class="m-img" src="res/images/bookimage/${ i.bookimage} " width="50" height="50"><br>
					${ i.bookid }
				</td>
				<td>${ i.bookname }</td>
				<td>${ i.author }</td>
				<td>${ i.publisher }</td>
				<td>${ i.unitprice }</td>
				<td class="dysl">${ i.summary }</td>
				<td>${ i.classid }</td>
				<td>
					<a href="editbook?bookid=${ i.bookid }" class="btn btn-small">
						<span class="icon-pencil"></span> Edit
					</a>
					<a href1="deletebook?bookid=${ i.bookid }" class="btn btn-small btn-danger button-book-delete">
						<span class="icon-trash icon-white"></span> Delete
					</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div class="pagination">
	<ul>
	<% 
		Pagination p = (Pagination)request.getAttribute("pagination");
		for(int i = 1; i <= p.getTotal(); i ++){
	%>
		<li><a href="admin/manage/managebook.jsp?page=<%= i %>"><%= i %></a></li>
	<%
		}
	%>
	</ul>
	<span class="text pull-right">
		Có <%= p.getCount() %> bản ghi，Hiện tại ở trang <%= p.getPage() %>
		
	</span>
</div>