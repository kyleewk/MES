<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/29
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
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
            <h4 class="page-title">成品库</h4>
            <ol class="breadcrumb">
                <li class="active">
                    成品库
                </li>
            </ol>
            <div class="clearfix"></div>
        </div>
        <!--End Page Title-->


        <!--Start row-->
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h2 class="header-title">成品库</h2>

                    <form class="js-validation-bootstrap form-horizontal" action="" method="post">
                        <div class="form-group">
                            <label class="col-md-2 control-label">日志序列</label>
                            <div class="col-md-10">
                                <input class="form-control"  value="${makeUp.id}" type="text"  readonly="true">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-2 control-label">成品库数量</label>
                            <div class="col-md-10">
                                <input class="form-control"  value="${makeUp.num}" type="number"  readonly="true">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">纪录时间</label>
                            <div class="col-md-10">
                                <input class="form-control"  value="${makeUp.time}" type="text"  readonly="true">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">是否已审核</label>
                            <div class="col-md-10">
                                <input class="form-control" value="${makeUp.response}" type="text"  readonly="true">
                            </div>
                        </div>

                        <div class="form-group" style="margin-top: 50px" align="center">
                            <div class="col-md-8 col-md-offset-3">
                                <a class="btn  btn-primary"  href="${pageContext.request.contextPath}/MakeUp/list">返回</a>
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