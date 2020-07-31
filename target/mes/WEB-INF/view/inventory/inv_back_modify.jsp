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

        <div class="page-title-box">
            <h4 class="page-title">退料列表</h4>
            <ol class="breadcrumb">
                <li class="active">
                    退料列表
                </li>
            </ol>
            <div class="clearfix"></div>
        </div>
        <!--End Page Title-->


        <!--Start row-->
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h2 class="header-title">退料列表</h2>

                    <<form class="js-validation-bootstrap form-horizontal" action="${pageContext.request.contextPath}/InvBack/modify?id=${invBack.id}" method="post">
                    <div class="form-group">
                        <label class="col-md-2 control-label">日志序列</label>
                        <div class="col-md-10">
                            <input class="form-control"  value="${invBack.id}" type="text" readonly="true" >
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-md-2 control-label">退料数量</label>
                        <div class="col-md-10">
                            <input class="form-control"  value="${invBack.num}" type="text" name="num" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">种类</label>
                        <div class="col-md-10">
                            <input class="form-control"  value="${invBack.type}" type="text" name="type">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">退料班组</label>
                        <div class="col-md-10">
                            <input class="form-control" value="${invBack.team}" type="text" name="team">
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
                                    <input type="text" placeholder="yyyy/MM/dd hh:mm:ss" id="date1" name="time" class="select-text" value="${invBack.time}"/>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">退料理由</label>
                        <div class="col-md-10">
                            <input class="form-control" value="${invBack.reason}" type="text" name="reason" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label" for="val-skill">退料处理<span class="text-danger">*</span></label>
                        <div class="col-md-10">
                            <select class="form-control" id="val-skill" name="response">
                                <option value="">${invBack.response}</option>
                                <option value="已处理">已处理</option>
                                <option value="未处理">未处理</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group" style="margin-top: 50px" align="center">
                        <div class="col-md-8 col-md-offset-3">
                            <a class="btn  btn-primary"  href="${pageContext.request.contextPath}/InvBack/list">返回</a>
                            <c:if test="${invBack.response == '已处理'}">
                            </c:if>
                            <c:if test="${invBack.response != '已处理'}">
                                <button type="submit" class="btn  btn-primary"  >提交</button>
                            </c:if>
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
<script src="${pageContext.request.contextPath}/statices/js/jquery-1.8.3.js"></script>
<script src="${pageContext.request.contextPath}/statices/js/calendar.min.js"></script>
<!-- End core plugin -->

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
</script></html>