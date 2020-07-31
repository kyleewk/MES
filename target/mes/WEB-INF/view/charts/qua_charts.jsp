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
    <script type="text/javascript" src="${pageContext.request.contextPath}/statices/js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statices/js/echarts-all.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statices/js/charts/qua/chart_qua_yield.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statices/js/charts/qua/chart_qua_yield3.js"></script>
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
                <h4 class="page-title">质量分析</h4>

                <div class="clearfix"></div>
            </div>
            <!--End Page Title-->


            <!--Start row-->
            <div class="row">
                <div class="col-md-12">
                <div class="white-box">
                        <h2 class="header-title">良率分析</h2>
                    <div id="chart_qua_yeild" style="width:600px;height:450px;margin-left: 100px">

                    </div>


                    <h2 class="header-title">产线实时监测图</h2>
                    <div id="chart_qua_yeild3" style="width:800px;height:500px;margin-left: 50px">

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
