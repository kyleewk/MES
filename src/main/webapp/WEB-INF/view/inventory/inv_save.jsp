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

<body class="sticky-header  body1">





<!-- main content start-->
<div class="main-content" >




    <!--body wrapper start-->
    <div class="wrapper">

        <!--Start Page Title-->
        <div class="page-title-box">
            <h4 class="page-title">入库日志</h4>

            <div class="clearfix"></div>
        </div>
        <!--End Page Title-->


        <!--Start row-->
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h2 class="header-title">日志列表</h2>
                    <form class="search1" method="post" id="searchFrom"
                          action="${pageContext.request.contextPath}/InvSave/list">
                        <label>
                            退料班组：
                            <input name="team" value="${team}">
                        </label>

                        <label>
                            日志序列：
                            <input name="id" value="${id}">
                        </label>
                        <input type="submit" value="搜索">
                    </form>
                    <div class="table-responsive">
                        <table id="example" class="display table">
                            <thead>
                            <tr>
                                <th>日志序列</th>
                                <th>入库数量</th>
                                <th>种类</th>
                                <th>入库班组</th>
                                <th>入库时间</th>
                                <th>领料处理</th>
                                <th>是否已入库</th>
                            </tr>
                            </thead>
                            <tbody>

                            <c:forEach items="${pageInfo.list}" var="inv_save">
                            <tr>
                                <td>${inv_save.id}</td>
                                <td>${inv_save.num}</td>
                                <td>${inv_save.type}</td>
                                <td>${inv_save.team}</td>
                                <td>${inv_save.time}</td>
                                <td>${inv_save.response}</td>
                                    <td>${inv_save.sresponse}
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="${pageContext.request.contextPath}/InvSave/toget?id=${inv_save.id}">修改</a>
                                    <a href="${pageContext.request.contextPath}/InvSave/del?id=${inv_save.id}">删除</a>
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

<!--Begin core plugin -->
<script src="${pageContext.request.contextPath}/statices/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/statices/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/statices/plugins/moment/moment.js"></script>
<script  src="${pageContext.request.contextPath}/statices/js/jquery.slimscroll.js "></script>
<script src="${pageContext.request.contextPath}/statices/js/jquery.nicescroll.js"></script>
<script src="${pageContext.request.contextPath}/statices/js/functions.js"></script>
<!-- End core plugin -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${pageContext.request.contextPath}/statices/js/page.js"></script>
<!-- BEGIN PAGE LEVEL SCRIPTS -->
</body>
</html>