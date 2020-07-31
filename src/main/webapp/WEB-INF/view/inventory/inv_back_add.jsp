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
    <link href="${pageContext.request.contextPath}/statices/css/calendar.min.css" rel="stylesheet">



</head>

<body class="sticky-header body1">





<!-- main content start-->
<div class="main-content" >


    <!--body wrapper start-->
    <div class="wrapper">

        <!--Start Page Title-->
        <div class="page-title-box">
            <h4 class="page-title">退料日志</h4>
            <ol class="breadcrumb">
                <li class="active">
                    退料日志
                </li>
            </ol>
            <div class="clearfix"></div>
        </div>
        <!--End Page Title-->


        <!--Start row-->
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h2 class="header-title">退料日志</h2>

                    <form class="js-validation-bootstrap form-horizontal" action="${pageContext.request.contextPath}/InvBack/add" method="post">

                            <div class="form-group">
                                <label class="col-md-2 control-label">退料数量</label>
                                <div class="col-md-10">
                                    <input class="form-control"  name="num" value="" type="text" oninput="value=value.replace(/[^\d]/g,'')">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label">种类</label>
                                <div class="col-md-10">
                                    <input class="form-control" name="type" value="" type="text">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label">退料班组</label>
                                <div class="col-md-10">
                                    <input class="form-control" value="" name="team" type="text">
                                </div>
                            </div>

                        <div class="form-group">
                            <div class="form-item">
                                    <div class="col-md-2 control-label">退料时间</div>
                                    <div class="col-md-10">
                                        <div class="select-win" id="datesWrap1">
                                            <div class="select-btn" >
                                                <span class="select-btn-icon new-icon-calendar" id="dateBtn1"></span>
                                            </div>
                                            <input type="text" placeholder="yyyy/MM/dd HH:mm:ss" id="date1" class="select-text" name="time"/>
                                        </div>
                                    </div>
                            </div>
                        </div>

                            <div class="form-group" >
                                <label class="col-md-2 control-label">退料理由</label>
                                <div class="col-md-10">
                                    <input class="form-control"  value="" name="reason" type="text">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label" for="val-skill" style="text-align: right">退料处理<span class="text-danger">*</span></label>
                                <div class="col-md-10">
                                    <select class="form-control" id="val-skill" name="response">
                                        <option value="已处理">已处理</option>
                                        <option value="未处理">未处理</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group" style="margin-top: 50px" align="center">
                                <div class="col-md-8 col-md-offset-3">
                                    <a class="btn  btn-primary"  href="${pageContext.request.contextPath}/InvBack/list">返回</a>
                                    <button type="submit" class="btn  btn-primary"  >提交</button>
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
<script src="${pageContext.request.contextPath}/statices/js/calendar.min.js"></script>
<script src="${pageContext.request.contextPath}/statices/js/jquery-1.8.3.js"></script>


<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script src="${pageContext.request.contextPath}/statices/plugins/jquery-validation/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/statices/pages/validation-custom.js"></script>
<!-- BEGIN PAGE LEVEL SCRIPTS -->
</body>
<script type="text/javascript">
    var opts1 = {//example 1 opts-
        'targetId':'date1',//时间写入对象的id
        'triggerId':['date1','dateBtn1'],//触发事件的对象id
        'alignId':'datesWrap1',//日历对齐对象
        'format':'-',//时间格式 默认'yyyy/MM/dd HH:MM:SS'
        'min':'2014-09-20 10:00:00',//最大时间
        'max':'9999-12-31 00:00:00'//最小时间
    };
    xvDate(opts1);
</script>
</html>