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
            <h4 class="page-title">成品库</h4>

            <div class="clearfix"></div>
        </div>
        <!--End Page Title-->


        <!--Start row-->
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h2 class="header-title">成品库</h2>
                    <a class="btn btn-info" href="${pageContext.request.contextPath}/MakeUp/toadd"><i class="fa fa fa-plus"></i> <span>添加</span></a>
                    <form class="search1" method="post" id="searchFrom"
                          action="${pageContext.request.contextPath}/MakeUp/list">
                        <label>
                            序列号：
                            <input name="id" value="${id}">
                        </label>

                        <input type="submit" value="搜索">
                    </form>

                    <div class="table-responsive">
                        <table id="example" class="display table">
                            <thead>
                            <tr>
                                <th>序列号</th>
                                <th>成品库数量</th>
                                <th>纪录时间</th>
                                <th>是否已审核</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${pageInfo.list}" var="makeup">
                                <tr>
                                    <td>${makeup.id}</td>
                                    <td>${makeup.num}</td>
                                    <td>${makeup.time}</td>
                                    <td>${makeup.reason}</td>
                                    <td>
                                            ${makeup.response}
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <a href="${pageContext.request.contextPath}/MakeUp/toscan?id=${makeup.id}" >查看</a>
                                        <a href="${pageContext.request.contextPath}/MakeUp/toget?id=${makeup.id}">修改</a>
                                        <a href="${pageContext.request.contextPath}/MakeUp/del?id=${makeup.id}">删除</a>
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
    </div>
    <!--End row-->


</div>
</html>