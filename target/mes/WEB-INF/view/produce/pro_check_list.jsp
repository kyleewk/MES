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

</head>

<body class="sticky-header body1">




    
    <!-- main content start-->
    <div class="main-content" >


        <!--body wrapper start-->
        <div class="wrapper">
              
          <!--Start Page Title-->
           <div class="page-title-box">
                <h4 class="page-title">工单审核</h4>
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
                        <h2 class="header-title">审核列表</h2>
                        <form class="search1" method="post" id="searchForm"
                              action="${pageContext.request.contextPath}/order/checklist"
                        >
                            <label>
                                机型：
                                <input name="machineType" value="${machineType}">
                            </label>
                            <label>
                                申请人：
                                <input name="leader" value="${leader}">
                            </label>
                            <input type="submit" value="搜索">
                        </form>
                        <div class="table-responsive">
                            <table id="example" class="display table">
                                <thead>
                                <tr>
                                    <th>工单序号</th>
                                    <th>机型</th>
                                    <th>申请人</th>
                                    <th>创建时间</th>
                                    <th>关联表单</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${pageInfo.list}" var="o">
                                    <tr>
                                        <td>${o.id}</td>
                                        <td>${o.machinetype}</td>
                                        <td>${o.employee.name}</td>
                                        <td><fmt:formatDate value="${o.createtime}" pattern="yyyy-MM-dd"/></td>
                                        <td>${o.connectid != null ? o.connectid : '无'}</td>
                                        <td>
                                            <c:if test="${o.status == 0 }">草稿</c:if>
                                            <c:if test="${o.status == 1 }">已提交</c:if>
                                            <c:if test="${o.status == 2 }">物料审批</c:if>
                                            <c:if test="${o.status == 3 }">生产审批</c:if>
                                            <c:if test="${o.status == 4 }">已完成</c:if>
                                            <c:if test="${o.status == -1}">驳回</c:if>
                                            <c:if test="${o.status == -2}">拒绝</c:if>
                                        </td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/order/toscan?id=${o.id}">查看</a>
                                            <a href="${pageContext.request.contextPath}/orderCheck/tocheck?id=${o.id}">审核</a>
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
