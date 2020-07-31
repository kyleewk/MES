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
            <h4 class="page-title">内容播报管理</h4>
            <div class="clearfix"></div>
        </div>


        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h2 class="header-title">播报列表</h2>
                    <a class="btn btn-info" href="show_add.jsp"><i class="fa fa fa-plus"></i> <span>添加</span></a>
                    <div class="search1">
                        <label>
                            查找:<input type="search" class="" placeholder="" aria-controls="example">
                        </label>
                    </div>

                    <div class="table-responsive">
                        <table id="example" class="display table">
                            <thead>
                            <tr>
                                <th>日期</th>
                                <th>计划数</th>
                                <th>产品型号</th>
                                <th>订单总数</th>
                                <th>当日累计产量</th>
                                <th>不良品累计产量</th>
                                <th>操作</th>

                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td>1月1日</td>
                                <td>9000</td>
                                <td>A1</td>
                                <td>1000</td>
                                <td>10</td>
                                <td>0</td>
                                <td>
                                    <a href="show_scan.jsp">查看</a>
                                    <a href="show_modify.jsp">修改</a>
                                    <a href="show_list.jsp">删除</a>
                                </td>
                            </tr>
                            <tr>
                                <td>1月1日</td>
                                <td>9000</td>
                                <td>A2</td>
                                <td>2000</td>
                                <td>10</td>
                                <td>0</td>
                                <td>
                                    <a href="show_scan.jsp">查看</a>
                                    <a href="show_modify.jsp">修改</a>
                                    <a href="show_list.jsp">删除</a>
                                </td>
                            </tr>
                            <tr>
                                <td>1月1日</td>
                                <td>9000</td>
                                <td>A3</td>
                                <td>1500</td>
                                <td>10</td>
                                <td>0</td>
                                <td>
                                    <a href="show_scan.jsp">查看</a>
                                    <a href="show_modify.jsp">修改</a>
                                    <a href="show_list.jsp">删除</a>
                                </td>
                            </tr>




                            </tbody>
                        </table>
                    </div>
                    <div class="page1" >
                        <a class="btn btn-white" role="button">上一页</a>
                        <button type="button" class="btn btn-white">1</button>
                        <a class="btn btn-white" role="button">下一页</a>
                    </div>
                </div>
            </div>
        </div>

    </div>


</div>



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