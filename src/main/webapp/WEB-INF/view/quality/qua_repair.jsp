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

<body class="sticky-header  body1">




    
    <!-- main content start-->
    <div class="main-content" >




        <!--body wrapper start-->
        <div class="wrapper">
              
          <!--Start Page Title-->
           <div class="page-title-box">
                <h4 class="page-title">异常处理日志</h4>
<!--                <ol class="breadcrumb">
                    <li>
                        <a href="#">Dashboard</a>
                    </li>
                    <li>
                        <a href="#">Table</a>
                    </li>
                    <li class="active">
                        Data Table
                    </li>
                </ol>-->
                <div class="clearfix"></div>
             </div>
              <!--End Page Title-->          
           
           
               <!--Start row-->
               <div class="row">
                   <div class="col-md-12">
                       <div class="white-box">
                           <h2 class="header-title">日志列表</h2>
                            <div class="table-responsive">
                             <table id="example" class="display table">
                                    <thead>
                                        <tr>
                                            <th>日志序列</th>
                                            <th>工单序号</th>
                                            <th>异常原因</th>
                                            <th>处理记录</th>
                                            <th>处理时间</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr>
                                            <td>01</td>
                                            <td>01</td>
                                            <td>设备故障</td>
                                            <td>调换机台，并维护故障设备</td>
                                            <td>2011/04/25</td>
                                            <td>无</td>
                                        </tr>
                                        <tr>
                                            <td>02</td>
                                            <td>02</td>
                                            <td>材料问题</td>
                                            <td>安排返修</td>
                                            <td>2011/04/25</td>
                                            <td>
                                                <a href="../produce/pro_repair.jsp">查看返修记录</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>03</td>
                                            <td>03</td>
                                            <td>工艺问题</td>
                                            <td>安排返修</td>
                                            <td>2011/04/25</td>
                                            <td>
                                                <a href="../produce/pro_repair.jsp">查看返修记录</a>
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
               <!--End row-->
               
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



</body>

</html>
