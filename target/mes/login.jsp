<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="${pageContext.request.contextPath}/statices/images/favicon.png" type="image/png">
  <title></title>
   <link href="${pageContext.request.contextPath}/statices/css/icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statices/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statices/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statices/css/responsive.css" rel="stylesheet">
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
          <script src="js/html5shiv.min.js"></script>
          <script src="js/respond.min.js"></script>
    <![endif]-->

</head>

<body class="sticky-header">

 
 <!--Start login Section-->
  <section class="login-section">
       <div class="container">
           <div class="row">
               <div class="login-wrapper">
                   <div class="login-inner">
                       
                       <div class="logo">
                         <img src="${pageContext.request.contextPath}/statices/images/logo-dark-mes.jpg" alt="logo"/>
                       </div>
                   		
                   		<h2 class="header-title text-center">登录</h2>

                       <form class="" method="post"
                             action="${pageContext.request.contextPath}/employee/login"
                       >
                           <div class="form-group">
                               <input type="text" class="form-control" name="sn"  placeholder="账号" >
                           </div>
                           
                           <div class="form-group">
                               <input type="text" class="form-control" name="password"  placeholder="密码" >
                           </div>

						<div class="form-group">
                           <div class="pull-left">
                            <div class="checkbox primary">
                              <input  id="checkbox-2" type="checkbox">
                              <label for="checkbox-2">记住密码</label>
                            </div>
                           </div>
                           
                           <div class="pull-right">
                           	   <a href="#" class="a-link">
                               <i class="fa fa-unlock-alt"></i> 忘记密码
                               </a>
                           </div>
                         </div>
                          
                           <div class="form-group">
                               <input type="submit" value="登录"  class="btn btn-primary btn-block" >
                           </div>
                           
                           <div class="form-group text-center">
                            还没有账号  <a href="${pageContext.request.contextPath}/employee/toRegister">注册 </a>
                           </div>
                           
                       </form>
                       
                        <div class="copy-text"> 
                         <p class="m-0">2020 &copy; MES admin</p>
                        </div>
                    
                   </div>
               </div>
               
           </div>
       </div>
  </section>
 <!--End login Section-->




    <!--Begin core plugin -->
    <script src="${pageContext.request.contextPath}/statices/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/statices/js/bootstrap.min.js"></script>
    <!-- End core plugin -->

</body>

</html>
