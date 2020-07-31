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
                <h4 class="page-title">SOP审核管理</h4>
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
                           <h2 class="header-title">审核列表</h2>
                           <div class="search1">
                               <label>
                                   查找:<input type="search" class="" placeholder="" aria-controls="example">
                               </label>
                           </div>
                            <div class="table-responsive">
                             <table id="example" class="display table">
                                    <thead>
                                        <tr>
                                            <th>机种</th>
                                            <th>工艺名称</th>
                                            <th>修改原因</th>
                                            <th>修改内容</th>
                                            <th>修改时间</th>
                                            <th>申请人</th>
                                            <th>状态</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>M001</td>
                                            <td>外观检验</td>
                                            <td>良率异常</td>
                                            <td>增加目检</td>
                                            <td>2011/04/25</td>
                                            <td>wk</td>
                                            <td>待审核</td>
                                            <td>
                                                <a href="check_sop.jsp">审核</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>M002</td>
                                            <td>外观检验</td>
                                            <td>良率异常</td>
                                            <td>增加目检</td>
                                            <td>2011/04/25</td>
                                            <td>wk</td>
                                            <td>已审核</td>
                                            <td>
                                                <a href="check_sop_scan.jsp">查看</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>M003</td>
                                            <td>外观检验</td>
                                            <td>良率异常</td>
                                            <td>增加目检</td>
                                            <td>2011/04/25</td>
                                            <td>wk</td>
                                            <td>已驳回</td>
                                            <td>
                                                <a href="check_sop_scan.jsp">查看</a>
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
