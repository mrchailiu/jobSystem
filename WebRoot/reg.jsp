<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reg.jsp' starting page</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/reset.css"/>
	<link rel="stylesheet" href="css/index.css"/>
	<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  	<style>
  		.sf-center{
  			line-height: 50px;
  		}
  		
  	</style>
  </head>
  <body>
  	<div class="navbar navbar-inverse sf-center" >
		  <a href=""><img src="imgs/back1-icon.png"/></a>
  	</div>
  	<div id="alt-pass" class="alert alert-danger text-center">
		  	 <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
						&times;
		     </button>
  			两次密码不一致
  	</div>
     <div class="container login-box">
    	<form class="form-signin">
    		<div class="fm center-block row">
	    		<h2 class="text-center">学员注册申请</h2>
	    		<div class="input-group">
		    		<span class="input-group-addon"><img src="imgs/tel-icon.png"/></span>
		    		<input type="text" id="uname" class="form-control input-lg" placeholder="请输入手机号" pattern="^1[3-9]\d{9}$" required autofocus/>
	    		</div>
	    		<br/>
	    		<div class="input-group">
		    		<span class="input-group-addon"><img src="imgs/user-icon.png"/></span>
		    		<input type="text" id="uname" class="form-control input-lg" placeholder="请输入姓名" required maxlength="12" autofocus/>
	    		</div>
	    		<br/>
	    		<div class="input-group">
		    		<span class="input-group-addon"><img src="imgs/password-icon.png"/></span>
		    		<input type="password" id="upass" class="form-control input-lg" placeholder="请输入密码" required maxlength="12" autofocus/>
	    		</div>
	    		<br/>
	    		<div class="input-group">
		    		<span class="input-group-addon"><img src="imgs/password-icon.png"/></span>
		    		<input type="password" id="repass" class="form-control input-lg" placeholder="再次输入密码" maxlength="12" required autofocus/>
	    		</div>
	    		<br/>
	    		<button class="btn btn-lg btn-primary  col-xs-12">登录</button>
    		</div>
    	</form>
    </div>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
  	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  	<script>
  	$(function(){
  		var backBtn = $('.sf-center a img:nth-child(1)');
  		$(backBtn).hover(function(){
  			$(this).attr('src','imgs/back2-icon.png');
  		},function(){
  			$(this).attr('src','imgs/back1-icon.png');
  		});
  		$(backBtn).click(function(){location.href='index.jsp'});
  		$('.form-signin').submit(function(){
  			if($.trim($('#upass').val()) != $.trim($('#repass').val()))
  			{
				$('#alt-pass').css('display','block');
	  			return false;
  			}
  		});
  	})
  	</script>
  </body>
</html>
