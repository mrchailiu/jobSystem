<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>湖北大学14级预科班作业提交系统</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/reset.css"/>
	<link rel="stylesheet" href="css/index.css"/>
	<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  </head>
  
  <body>
  	<div class="navbar navbar-inverse">
  	</div>
    <div class="container login-box">
    	<form class="form-signin">
    		<div class="fm center-block">
	    		<h2 class="text-center">学员登录</h2>
	    		<div class="input-group">
		    		<span class="input-group-addon"><img src="imgs/tel-icon.png"/></span>
		    		<input type="text" id="uname" class="form-control input-lg" placeholder="请输入手机号" required autofocus/>
	    		</div>
	    		<br/>
	    		<div class="input-group">
		    		<span class="input-group-addon"><img src="imgs/password-icon.png"/></span>
		    		<input type="password" id="upass" class="form-control input-lg" placeholder="请输入密码" required autofocus/>
	    		</div>
	    		<div class="checkbox text-center">
	    			<label><input type="checkbox"/><span>记住密码</span>&nbsp;&nbsp;<a href="javascript:void(0)" id="link-reg">申请账号</a></label>
	    		</div>
	    		<button class="btn btn-lg btn-primary  col-xs-12">登录</button>
    		</div>
    	</form>
    </div>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
  	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  	<script>
  	$(function(){
		$('#link-reg').click(function(){
			location.href='reg.jsp';
		});
  	})
  	</script>
  </body>
</html>
