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


</head>

<body class="sticky-header body1">





<!-- main content start-->
<div class="main-content" >


    <!--body wrapper start-->
    <div class="wrapper">

        <div class="page-title-box">
            <h4 class="page-title">领料列表</h4>
            <ol class="breadcrumb">
                <li class="active">
                    领料列表
                </li>
            </ol>
            <div class="clearfix"></div>
        </div>
        <!--End Page Title-->


        <!--Start row-->
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h2 class="header-title">领料列表</h2>

                    <form class="js-validation-bootstrap form-horizontal" action="" method="post">
                        <div class="form-group">
                            <label class="col-md-2 control-label">日志序列</label>
                            <div class="col-md-10">
                                <input class="form-control"  value="${invGet.id}" type="text"  oninput="value=value.replace(/[^\d]/g,'')" readonly="true">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-2 control-label">领料数量</label>
                            <div class="col-md-10">
                                <input class="form-control"  value="${invGet.num}" type="text" oninput="value=value.replace(/[^\d]/g,'')" readonly="true">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">种类</label>
                            <div class="col-md-10">
                                <input class="form-control"  value="${invGet.type}" type="text" readonly="true">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">领料人</label>
                            <div class="col-md-10">
                                <input class="form-control" value="${invGet.leader}" type="text" readonly="true">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">领料班组</label>
                            <div class="col-md-10">
                                <input class="form-control" value="${invGet.team}" type="text"  readonly="true">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">领料时间</label>
                            <div class="col-md-10">
                                <input class="form-control"  value="${invGet.time}" type="text"  readonly="true">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">领料处理</label>
                            <div class="col-md-10">
                                <input class="form-control" value="${invGet.response}" type="text"  readonly="true">
                            </div>
                        </div>

                        <div class="form-group" style="margin-top: 50px" align="center">
                            <div class="col-md-8 col-md-offset-3">
                                <a class="btn  btn-primary"  href="${pageContext.request.contextPath}/InvGet/list">返回</a>
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