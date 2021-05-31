<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="count" class="com.zh.process.ComputerVisitor"  scope="session" />
<link rel="stylesheet" href="res/go-top/css/style.css">
<!-- Footer -->
	<footer id="main-footer" class="bg-dark text-center py-1">
		<div class="container">
			<p>Copyright &copy; 2019, EdgeLedger, All Rights Reserved</p>
		</div>
	</footer>

    <!-- JQuery CDN -->
    <script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>

	<!-- Local JS File -->
	<script src="res/index/js/main.js"></script>

	<!-- Google Maps -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDRcCi7sf9xINpmjFUdkHC3KpFQ24bHOJI&callback=initMap"
    async defer></script>