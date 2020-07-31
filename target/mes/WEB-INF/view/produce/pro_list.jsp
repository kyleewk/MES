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
    


</head>

<body class="sticky-header body1">


    <!-- main content start-->
    <div class="main-content" >


        <!--body wrapper start-->
        <div class="wrapper">
              
          <!--Start Page Title-->
           <div class="page-title-box">
                <h4 class="page-title">生产工单管理</h4>
                <div class="clearfix"></div>
             </div>
              <!--End Page Title-->          
           
           
               <!--Start row-->
               <div class="row">
                   <div class="col-md-12">
                       <div class="white-box">
                           <h2 class="header-title">工单申请</h2>
                           <a class="btn btn-info" href="${pageContext.request.contextPath}/order/toadd"><i class="fa fa fa-plus"></i> <span>添加</span></a>
                           <form class="search1" method="post" id="searchForm"
                            action="${pageContext.request.contextPath}/order/list"
                           >
                               <label>
                                   <select class="form-control" id="val-skill" name="productline">
                                       <option value="0" ${pro==0?"selected='selected'":""}>请选择产线:</option>
                                       <option value="1" ${pro==1?"selected='selected'":""}>1线</option>
                                       <option value="2" ${pro==2?"selected='selected'":""}>2线</option>
                                       <option value="3" ${pro==3?"selected='selected'":""}>3线</option>
                                       <option value="4" ${pro==4?"selected='selected'":""}>4线</option>
                                       <option value="5" ${pro==5?"selected='selected'":""}>5线</option>
                                   </select>
                               </label>
                               <label>
                                   负责人：
                                   <input name="machineType" value="${machineType}">
                               </label>
                                    <input type="submit" value="搜索">
                           </form>
                            <div class="table-responsive">
                             <table id="example" class="display table">
                                    <thead>
                                        <tr>
                                            <th>工单序号</th>
                                            <th>机种</th>
                                            <th>产线安排</th>
                                            <th>机台派工</th>
                                            <th>物料发放</th>
                                            <th>班组派工</th>
                                            <th>申请人</th>
                                            <th>状态</th>
                                            <th>下一步处理人</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <c:forEach items="${pageInfo.list}" var="o">
                                            <tr>
                                                <td>${o.id}</td>
                                                <td>${o.machinetype}</td>
                                                <td>${o.productline}</td>
                                                <td>${o.device}</td>
                                                <td>${o.materiel}</td>
                                                <td>${o.team}</td>
                                                <td>${o.employee.name}</td>
                                                <td>
                                                    <c:if test="${o.status == 0 }">草稿</c:if>
                                                    <c:if test="${o.status == 1 }">已提交</c:if>
                                                    <c:if test="${o.status == 2 }">物料审批</c:if>
                                                    <c:if test="${o.status == 3 }">生产审批</c:if>
                                                    <c:if test="${o.status == 4 }">已完成</c:if>
                                                    <c:if test="${o.status == -1}">驳回</c:if>
                                                    <c:if test="${o.status == -2}">拒绝</c:if>
                                                </td>
                                                <td>${o.employee2.name}</td>
                                                <td>
                                                    <a href="${pageContext.request.contextPath}/order/toscan?id=${o.id}">查看</a>
                                                    <c:if test="${o.status == 0 || o.status == -1}">
                                                        <a href="${pageContext.request.contextPath}/order/toget?id=${o.id}">修改</a>
                                                    </c:if>
                                                    <c:if test="${o.status == 0}">
                                                        <a href="${pageContext.request.contextPath}/order/tosub?id=${o.id}">提交</a>
                                                    </c:if>
                                                    <c:if test="${o.status == 0 }">
                                                        <a href="${pageContext.request.contextPath}/order/del?id=${o.id}">删除</a>
                                                    </c:if>
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
