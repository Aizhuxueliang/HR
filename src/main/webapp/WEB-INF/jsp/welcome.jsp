<%@page import="com.zxl.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" href="favicon.ico"> 
    
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path %>/css/style.css?v=4.1.0" rel="stylesheet">
    
     <script>
		var myVar=setInterval(function(){myTimer()},1000);
		function myTimer(){
			var d=new Date();
			var t=d.toLocaleTimeString();
			document.getElementById("time").innerHTML=t;
		}
	</script>

</head>
<body id="gray">
    <div style="text-align: center;color: #000;">
        <p>&nbsp;</p>
		<%Employee employee = (Employee)session.getAttribute("loged"); %>
		<h1><%=employee.getName() %></h1>
		<p>&nbsp;</p>
		<h1>欢迎使用人事管理系统</h1>
		<h1 id="time">&nbsp;</h1>
		<p>&nbsp;</p>
		<p><a href="<%=path %>/attendance/addStart.do?employeeNumber=<%=employee.getEmployeeNumber() %>" 
				class="btn btn-info btn-lg">&nbsp;上班签到&nbsp;</a>
			<a href="<%=path %>/attendance/addEnd.do?employeeNumber=<%=employee.getEmployeeNumber() %>" 
				class="btn btn-info btn-lg">&nbsp;下班签到&nbsp;</a>
		</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
    </div>
	<!-- 全局js -->
    <script src="<%=path%>/js/jquery.min.js?v=2.1.4"></script>
    <script src="<%=path%>/js/bootstrap.min.js?v=3.3.6"></script>
    
    <!-- 自定义js -->
    <script src="<%=path%>/js/content.js?v=1.0.0"></script>
    
    <!-- layer javascript -->
    <script src="js/plugins/layer/layer.min.js"></script>
   	<script>
   	$("a").click(function () {
   		parent.layer.alert('签到成功！')
	});
   	</script>
</body>
</html>
