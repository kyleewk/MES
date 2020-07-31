<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="${pageContext.request.contextPath}/statices/plugins/datatables/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/statices/plugins/datatables/css/jquery.dataTables-custom.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL STYLES -->
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

<body class="sticky-header  body1">




    
    <!-- main content start-->
    <div class="main-content" >




        <!--body wrapper start-->
        <div class="wrapper">
              
          <!--Start Page Title-->
           <div class="page-title-box">
                <h4 class="page-title">质量基础数据定义</h4>

                <div class="clearfix"></div>
             </div>
              <!--End Page Title-->          
           
           
               <!--Start row-->
               <div class="row">
                   <div class="col-md-12">
                       <div class="white-box">
                           <h2 class="header-title">质量基础数据定义</h2>
                           <a class="btn btn-info" href="${pageContext.request.contextPath}/quality/toadd"><i class="fa fa fa-plus"></i> <span>添加</span></a>
                           <form class="search1" method="post"  id="searchForm"
                                 action="${pageContext.request.contextPath}/quality/list"
                           >
                               <label>
                                   类型：
                                   <input name="type" value="${type}">
                               </label>
                               <label>
                                   项目：
                                   <input name="project" value="${project}">
                               </label>
                               <input type="submit" value="搜索">
                           </form>
                            <div class="table-responsive">
                             <table id="example" class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th style="text-align: center;">类型</th>
                                            <th>项目</th>
                                            <th>比重</th>
                                            <th>目标</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${pageInfo.list}" var="o">
                                        <tr>
                                            <td>${o.type}</td>
                                            <td>${o.project}</td>
                                            <td>${o.proportion}</td>
                                            <td>${o.target}</td>
                                            <td>
                                                <a href="${pageContext.request.contextPath}/quality/toget?id=${o.id}">修改</a>
                                                <a href="${pageContext.request.contextPath}/quality/del?id=${o.id}">删除</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                   </table>  
                            </div>
                           <div class="page1" >
                               <c:if test="${pageInfo.hasPreviousPage}">
                                   <a class="btn btn-white" role="button"  onclick="subForm(${pageInfo.prePage});">上一页</a>
                               </c:if>
                               <c:forEach items="${pageInfo.navigatepageNums}" var="n">
                                   <a onclick="subForm(${n});"><button type="button" class="btn btn-white" >${n}</button></a>
                               </c:forEach>
                               <c:if test="${pageInfo.hasNextPage}">
                                   <a class="btn btn-white" role="button" onclick="subForm(${pageInfo.nextPage});">下一页</a>
                               </c:if>
                           </div>
                       </div>
                   </div>
               </div>
               <!--End row-->
               
			    </div>
        <!-- End Wrapper-->


       </div>
      <!--End main content -->
    


    <!--Begin core plugin -->
    <script src="${pageContext.request.contextPath}/statices/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/statices/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/statices/plugins/moment/moment.js"></script>
    <script  src="${pageContext.request.contextPath}/statices/js/jquery.slimscroll.js "></script>
    <script src="${pageContext.request.contextPath}/statices/js/jquery.nicescroll.js"></script>
    <script src="${pageContext.request.contextPath}/statices/js/functions.js"></script>
    <!-- End core plugin -->
    <script src="${pageContext.request.contextPath}/statices/js/page.js"></script>


</body>

</html>
