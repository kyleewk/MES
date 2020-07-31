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

        <div class="page-title-box">
            <h4 class="page-title">播报列表</h4>
            <ol class="breadcrumb">
                <li class="active">
                    播报列表
                </li>
            </ol>
            <div class="clearfix"></div>
        </div>
        <!--End Page Title-->


        <!--Start row-->
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h2 class="header-title">播报列表</h2>

                    <form class="js-validation-bootstrap form-horizontal" action="base_forms_validation.jsp" method="post">
                        <div class="form-group">
                            <label class="col-md-2 control-label">日期</label>
                            <div class="col-md-10">
                                <input class="form-control"  value="" type="date">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-2 control-label">计划数</label>
                            <div class="col-md-10">
                                <input class="form-control"  value="" type="text" oninput="value=value.replace(/[^\d]/g,'')">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">产品型号</label>
                            <div class="col-md-10">
                                <input class="form-control"  value="" type="text">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">订单总数</label>
                            <div class="col-md-10">
                                <input class="form-control" value="" type="text" oninput="value=value.replace(/[^\d]/g,'')">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">当日累计产量</label>
                            <div class="col-md-10">
                                <input class="form-control" value="" type="text" oninput="value=value.replace(/[^\d]/g,'')">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">不良品累计产量</label>
                            <div class="col-md-10">
                                <input class="form-control"  value="" type="text" oninput="value=value.replace(/[^\d]/g,'')">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">修改原因</label>
                            <div class="col-md-10">
                                <input class="form-control"  value="录入错误" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">修改内容</label>
                            <div class="col-md-10">
                                <input class="form-control"  value="增加计划数" type="text">
                            </div>
                        </div>

                        <div class="form-group" style="margin-top: 50px" align="center">
                            <div class="col-md-8 col-md-offset-3">
                                <a class="btn  btn-primary"  href="show_list.jsp">返回</a>
                                <a class="btn  btn-primary"  href="show_list.jsp">提交</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- end row -->

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

<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${pageContext.request.contextPath}/statices/plugins/jquery-validation/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/statices/pages/validation-custom.js"></script>
<!-- BEGIN PAGE LEVEL SCRIPTS -->


</body>
</html>