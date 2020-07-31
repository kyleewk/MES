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
    <script type="text/javascript" src="${pageContext.request.contextPath}/statices/js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statices/js/echarts-all.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statices/js/charts/produce/chart_pro11.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statices/js/charts/produce/chart_pro3.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->


</head>

<body class="sticky-header body1">
<input type="hidden" id="path" value="${pageContext.request.contextPath}">

    
    <!-- main content start-->
    <div class="main-content" >

        <!--body wrapper start-->
        <div class="wrapper">

            <!--Start Page Title-->
            <div class="page-title-box">
                <h4 class="page-title">生产管理报表</h4>

                <div class="clearfix"></div>
            </div>
            <!--End Page Title-->


            <!--Start row-->
            <div class="row">
                <div class="col-md-12">
                <div class="white-box">
                        <h1 class="header-title">产能分析</h1>

                        <h5 >产能组成分析</h5>
                    <div id="chart_pro11" style="width:800px;height:550px;margin-left: 50px">

                    </div>
                    <h2 class="header-title">生产进度计划分析</h2>
                    <div id="chart_pro3" style="width:800px;height:600px;margin-left: 50px">

                    </div>
                </div>
            </div>
            <!--End row-->

        </div>
              <!--End Page Title-->          

			    </div>
        <!-- End Wrapper-->

       </div>
      <!--End main content -->
    




</body>

</html>
