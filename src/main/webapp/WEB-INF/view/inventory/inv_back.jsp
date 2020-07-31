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
            <h4 class="page-title">退料日志</h4>
            <div class="clearfix"></div>
        </div>
        <!--End Page Title-->


        <!--Start row-->
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h2 class="header-title">日志列表</h2>
                    <a class="btn btn-info" href="${pageContext.request.contextPath}/InvBack/toadd"><i class="fa fa fa-plus"></i> <span>添加</span></a>
                    <form class="search1" method="post" id="searchFrom"
                          action="${pageContext.request.contextPath}/InvBack/list">
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
                                <th>退料数量</th>
                                <th>种类</th>
                                <th>退料班组</th>
                                <th>退料时间</th>
                                <th>退料理由</th>
                                <th>退料处理</th>
                            </tr>
                            </thead>
                            <tbody>

                            <c:forEach items="${pageInfo.list}" var="inv_back">
                            <tr>
                                <td>${inv_back.id}</td>
                                <td>${inv_back.num}</td>
                                <td>${inv_back.type}</td>
                                <td>${inv_back.team}</td>
                                <td>${inv_back.time}</td>
                                <td>${inv_back.reason}</td>
                                <td>
                                    ${inv_back.response}
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="${pageContext.request.contextPath}/InvBack/toscan?id=${inv_back.id}" >查看</a>
                                    <a href="${pageContext.request.contextPath}/InvBack/toget?id=${inv_back.id}">修改</a>
                                    <a href="${pageContext.request.contextPath}/InvBack/del?id=${inv_back.id}">删除</a>
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