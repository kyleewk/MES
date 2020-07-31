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
                <h4 class="page-title">生产进度管理</h4>
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
                           <h2 class="header-title">进度列表</h2>
                           <!--<a class="btn btn-info" href="pro_process_add.jsp"><i class="fa fa fa-plus"></i> <span>添加</span></a>-->
                           <form class="search1" method="post"  id="searchForm"
                                 action="${pageContext.request.contextPath}/process/list"
                           >
                               <label>
                                   工单序号：
                                   <input name="type" value="${orderid}">
                               </label>
                               <label>
                                   <select class="form-control" id="val-skill" name="status">
                                       <option value="-3">请选择状态:</option>
                                       <option value="0" ${status==0?"selected='selected'":""}>准备中</option>
                                       <option value="1" ${status==1?"selected='selected'":""}>进行中</option>
                                       <option value="2" ${status==2?"selected='selected'":""}>已完成</option>
                                       <option value="-1" ${status==-1?"selected='selected'":""}>暂停</option>
                                       <option value="-2" ${status==-2?"selected='selected'":""}>超期</option>
                                   </select>
                               </label>
                               <input type="submit" value="搜索">
                           </form>
                            <div class="table-responsive">
                             <table id="example" class="display table">
                                    <thead>
                                        <tr>
                                            <th>工单序号</th>
                                            <th>机种</th>
                                            <th>产线</th>
                                            <th>目标产量</th>
                                            <th>开始时间</th>
                                            <th>结束时间</th>
                                            <th>实际产量</th>
                                            <th>不良品数</th>
                                            <th>当前状态</th>
                                            <th>操作</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${pageInfo.list}" var="o">
                                        <tr>
                                            <td>${o.orderid}</td>
                                            <td>${o.order.machinetype}</td>
                                            <td>${o.order.productline}</td>
                                            <td>${o.order.targetnum}</td>
                                            <td><fmt:formatDate value="${o.order.starttime}" pattern="yyyy-MM-dd"/></td>
                                            <td><fmt:formatDate value="${o.order.endtime}" pattern="yyyy-MM-dd"/></td>
                                            <td>${o.realnum}</td>
                                            <td>${o.ngnum}</td>
                                            <td>
                                            <c:if test="${o.status == 0 }">准备中</c:if>
                                            <c:if test="${o.status == 1 }">进行中</c:if>
                                            <c:if test="${o.status == 2 }">已完成</c:if>
                                            <c:if test="${o.status == -1}">暂停</c:if>
                                            <c:if test="${o.status == -2}">关闭</c:if>
                                            </td>
                                            <td>
                                                <a href="${pageContext.request.contextPath}/process/toup?id=${o.id}">更新</a>
                                                <a href="${pageContext.request.contextPath}/process/toHis?orderid=${o.orderid}">查看</a>
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
