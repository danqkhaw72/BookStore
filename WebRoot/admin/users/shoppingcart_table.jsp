<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.zh.bean.CartBean"%>
<%@ page import="java.util.List"%>
<table class="table table-striped table-hover">
	<col width="80px">
	<col width="160px">
	<col width="130px">
	<col width="100px">
	<col width="130px">
	<col width="110px">
	<col>
	<thead>
		<tr>
			<th>Tùy chọn</th>
			<th>Image</th>
			<th>Tên Sách</th>
			<th>Dơn giá</th>
			<th>Số lượng</th>
			<th>Số tiền</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${requestScope.carts}" var="j">
			<tr>
				<td class="mycheck">
  					<input type="checkbox" class="mycheckbox${ j.count}">
  				</td>
				<td><a href="bookinformation?bookid=${ j.bookid }">
					<img src="res/images/bookimage/${ j.bookimage} " width="100" height="100"></a>
				</td>
				<td>${ j.bookname }<input id="bookid${ j.count}" value="${ j.bookid }" style="display:none;"/></td>
				<td class="price${ j.count}">${ j.unitprice}</td>
				<td>
				<span class="property-quantity">
     	        	<span class="property-quantity-control">
                		<button class="btn vm-minus lower${ j.count}" style="outline:none;">-</button>
                        <input class="text_box${ j.count}" type="text" value="${ j.quantity }" disabled>
                        <button class="btn  vm-plus add${ j.count}" style="outline:none;">+</button>
                	</span>
                </span>
                </td>
				<td><h5><span class="sum${ j.count}" style="color:red;"></span></h5></td>
				<td>
					
					<a href="deleteshoppingcart?bookid=${ j.bookid }&del=0" class="del">
						<span class="icon-trash"></span>Delete
					</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<c:if test="${requestScope.carts == '[]'}">
<a href="index.jsp">
<img src="res/images/webico/cart.png" height="220px" width="900px"></a>
</c:if>
<div class="myheji"> 
	<hr class="my-hr">
	
	<a href1="deleteshoppingcart?del=1" class="mydel del" style="cursor:pointer;">Delete All</a> 
		
	<strong class="jine">Tổng Tiền:<span class="msum"></span></strong>		
	<span class="jiesuan">
		<a href="admin/users/addorderform.jsp" 
			class="mybtn">Thanh Toán</a>
	</span>
</div>