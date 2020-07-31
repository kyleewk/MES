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
                                   工单序号：
                                   <input name="orderId" value="${orderId}">
                               </label>
                                    <input type="submit" value="搜索">
                           </form>
                            <div class="table-responsive">
                             <table id="example" class="display table">
                                    <thead>
                                        <tr>
                                            <th>工单查询</th>
                                            <th>工艺查询</th>
                                            <th>产线安排</th>
                                            <th>班组派工</th>
                                            <th>领料序号</th>
                                            <th>入库序号</th>
                                            <th>退料序号</th>
                                            <th>质检记录</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${pageInfo.list}" var="o">
                                            <tr>
                                                <td>
                                                    工单序号：${o.orderid} &nbsp; &nbsp;
                                                    <a href="${pageContext.request.contextPath}/orderCheck/hislist?orderid=${o.orderid}">审核记录</a>
                                                    <a href="${pageContext.request.contextPath}/process/toHis?orderid=${o.orderid}">进度记录</a>
                                                    <c:if test="${o.order.connectid != null}">
                                                        <a href="${pageContext.request.contextPath}/trace/list?orderId=${o.order.connectid}">关联表单</a>
                                                    </c:if>
                                                </td>
                                                <td><a href="${pageContext.request.contextPath}/craft/list?machinetype=${o.craftid}">${o.craftid}<a/></td>
                                                <td><a href="${pageContext.request.contextPath}/productLine/list?id=${o.productid}">${o.productid}<a/></td>
                                                <td><a href="${pageContext.request.contextPath}/team/list?id=${o.teamid}">${o.teamid}<a/></td>
                                                <td><a href="${pageContext.request.contextPath}/InvGet/list?id=${o.invgetid}">${o.invgetid}<a/></td>
                                                <td><a href="${pageContext.request.contextPath}/InvSave/list?id=${o.invsaveid}">${o.invsaveid}<a/></td>
                                                <td><a href=${pageContext.request.contextPath}/InvBack/list?id=${o.invbackid}">${o.invbackid}<a/></td>
                                                <td>
                                                    <a href="${pageContext.request.contextPath}/qualitylog/list?orderId=${o.orderid}" id="">质检记录</a>
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
