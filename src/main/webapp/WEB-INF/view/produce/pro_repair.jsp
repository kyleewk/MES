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
                <h4 class="page-title">返修管理</h4>
<!--                <ol class="breadcrumb">
                    <li>
                        <a href="#">Dashboard</a>
                    </li>
                    <li>
                        <a href="#">Table</a>
                    </li>
                    <li class="active">
                        Data Table
                    </li>
                </ol>-->
                <div class="clearfix"></div>
             </div>
              <!--End Page Title-->          

               <!--Start row-->
               <div class="row">
                   <div class="col-md-12">
                       <div class="white-box">
                           <h2 class="header-title">返修记录</h2>
                           <form class="search1" method="post" id="searchForm"
                                 action="${pageContext.request.contextPath}/repair/list"
                           >
                               <label>
                                   返修工单序号：
                                   <input name="orderid" value="${orderid}">
                               </label>
                               <label>
                                   负责人：
                                   <input name="applicantname" value="${applicantname}">
                               </label>
                               <input type="submit" value="搜索">
                           </form>
                            <div class="table-responsive">
                             <table id="example" class="display table">
                                    <thead>
                                        <tr>
                                            <th>返修工单序号</th>
                                            <th>返修机种</th>
                                            <th>返修原因</th>
                                            <th>返修时间</th>
                                            <th>人员安排</th>
                                            <th>负责人</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${pageInfo.list}" var="o">
                                        <tr>
                                            <td>${o.orderid}</td>
                                            <td>${o.repairtype}</td>
                                            <td>${o.modifyreason}</td>
                                            <td><fmt:formatDate value="${o.modifydate}" pattern="yyyy-MM-dd"/></td>
                                            <td>
                                                    ${o.repairteam}
                                            </td>
                                            <td>${o.applicantname}</td>
                                            <td>
                                                <a href="${pageContext.request.contextPath}/repair/toget?id=${o.id}">修改</a>
                                                <a href="${pageContext.request.contextPath}/repair/del?id=${o.id}">删除</a>
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
