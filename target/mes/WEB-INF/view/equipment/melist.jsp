<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<body class="sticky-header body1">




    
    <!-- main content start-->
    <div class="main-content" >





        <!--body wrapper start-->
        <div class="wrapper">
              
          <!--Start Page Title-->
           <div class="page-title-box">
                <h4 class="page-title">设备管理</h4>

                <div class="clearfix"></div>
             </div>
              <!--End Page Title-->          
           
           
               <!--Start row-->
               <div class="row">
                   <div class="col-md-12">
                       <div class="white-box">
                           <h2 class="header-title">设备信息</h2>
                           <a class="btn btn-info" href="${pageContext.request.contextPath}/equipment/toadd"><i class="fa fa fa-plus"></i> <span>添加</span></a>
                           <form class="search1" method="post"
                                 action="${pageContext.request.contextPath}/equipment/list"
                           >
                               <label>
                                   设备名称：
                                   <input name="devicenam">
                               </label>
                               <label>
                                   规格型号：
                                   <input name="unittype">
                               </label>
                               <input type="submit" value="搜索">
                           </form>
                            <div class="table-responsive">
                             <table id="example" class="display table">
                                 <thead>
                                 <tr>
                                     <th>设备编号</th>
                                     <th>设备名称</th>
                                     <th>规格型号</th>
                                     <th>设备用途</th>
                                     <th>生产厂家</th>
                                     <th>出厂编号</th>
                                     <th>接受日期</th>
                                     <th>启用日期</th>
                                     <th>目前放置地点</th>
                                     <th>目前状态</th>
                                     <th>保管人</th>
                                     <th>操作</th>
                                 </tr>
                                 </thead>
                                 <tbody>
                                     <c:forEach items="${pageInfo.list}" var="o">
                                         <tr>
                                             <td>${o.id}</td>
                                             <td>${o.devicename}</td>
                                             <td>${o.unittype}</td>
                                             <td>${o.equipmentuse}</td>
                                             <td>${o.manufacturer}</td>
                                             <td>${o.factorynumber}</td>
                                             <td><fmt:formatDate value="${o.acceptancedate}" pattern="yyyy/MM/dd HH-mm-ss"/> </td>
                                             <td><fmt:formatDate value="${o.commissioningdate}" pattern="yyyy/MM/dd HH-mm-ss"/></td>
                                             <td>${o.place}</td>
                                             <td>${o.status}</td>
                                             <td>${o.storeman}</td>
                                             <td>
                                                 <a href="${pageContext.request.contextPath}/equipment/toscan?id=${o.id}">编辑</a>
                                             </td>
                                         </tr>
                                     </c:forEach>

                                 </tbody>
                                   </table>  
                            </div>
                           <div class="page1" >
                               <c:if test="${pageInfo.hasPreviousPage}">
                                   <a class="btn btn-white" role="button" href="${pageContext.request.contextPath}/equipment/list?page=${pageInfo.prePage}">上一页</a>
                               </c:if>
                               <c:forEach items="${pageInfo.navigatepageNums}" var="n">
                                   <a href="${pageContext.request.contextPath}/equipment/list?page=${n}"><button type="button" class="btn btn-white" >${n}</button></a>
                               </c:forEach>
                               <c:if test="${pageInfo.hasNextPage}">
                                   <a class="btn btn-white" role="button" href="${pageContext.request.contextPath}/equipment/list?page=${pageInfo.nextPage}">下一页</a>
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
