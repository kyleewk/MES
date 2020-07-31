<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<body class="sticky-header body1">




    
    <!-- main content start-->
    <div class="main-content" >





        <!--body wrapper start-->
        <div class="wrapper">
              
          <!--Start Page Title-->
           <div class="page-title-box">
                <h4 class="page-title">组织结构管理</h4>

                <div class="clearfix"></div>
             </div>
              <!--End Page Title-->          
           
           
               <!--Start row-->
               <div class="row">
                   <div class="col-md-12">
                       <div class="white-box">
                           <h2 class="header-title">班组管理</h2>
                           <a class="btn btn-info" href="${pageContext.request.contextPath}/team/toadd"><i class="fa fa fa-plus"></i> <span>添加</span></a>
                           <form class="search1" method="post"
                                 action="${pageContext.request.contextPath}/team/list"
                           >
                               <label>
                                   班组编号：
                                   <input name="id">
                               </label>
                               <label>
                                   生产部门：
                                   <input name="productdepartment">
                               </label>
                               <input type="submit" value="搜索">
                           </form>
                            <div class="table-responsive">
                             <table id="example" class="display table">
                                 <thead>
                                 <tr>
                                     <th>班组编号</th>
                                     <th>生产部门</th>
                                     <th>产品名称</th>
                                     <th>生产班组</th>
                                     <th>班组人数</th>
                                     <th>计划完成产量</th>
                                     <th>计划完成日期</th>
                                     <th>操作</th>
                                 </tr>
                                 </thead>
                                 <tbody>


                                 <c:forEach items="${pageInfo.list}" var="o">
                                     <tr>
                                         <td>${o.id}</td>
                                         <td>${o.productdepartment}</td>
                                         <td>${o.productname}</td>
                                         <td>${o.productteam}</td>
                                         <td>${o.teamtotal}</td>
                                         <td>${o.completetotalplan}</td>
                                         <td><fmt:formatDate value="${o.completetime}" pattern="yyyy/MM/dd HH:mm:ss"/> </td>
                                         <td>
                                             <a href="${pageContext.request.contextPath}/team/toscan?id=${o.id}">编辑</a>
                                         </td>
                                     </tr>
                                 </c:forEach>
                                 </tbody>
                                   </table>  
                            </div>
                           <div class="page1" >
                               <c:if test="${pageInfo.hasPreviousPage}">
                                   <a class="btn btn-white" role="button" href="${pageContext.request.contextPath}/team/list?page=${pageInfo.prePage}">上一页</a>
                               </c:if>
                               <c:forEach items="${pageInfo.navigatepageNums}" var="n">
                                   <a href="${pageContext.request.contextPath}/team/list?page=${n}"><button type="button" class="btn btn-white" >${n}</button></a>
                               </c:forEach>
                               <c:if test="${pageInfo.hasNextPage}">
                                   <a class="btn btn-white" role="button" href="${pageContext.request.contextPath}/team/list?page=${pageInfo.nextPage}">下一页</a>
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

    <!--Begin Page Level Plugin-->
	<!--<script src="${pageContext.request.contextPath}/statices/plugins/datatables/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/statices/pages/table-data.js"></script>-->
    <!--End Page Level Plugin-->

</body>

</html>
