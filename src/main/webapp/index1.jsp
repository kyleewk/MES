<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="${pageContext.request.contextPath}/statices/images/favicon.png" type="image/png">
  <title>Home</title>

    <!--Begin  Page Level  CSS -->
    <link href="${pageContext.request.contextPath}/statices/plugins/morris-chart/morris.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statices/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"/>
     <!--End  Page Level  CSS -->
    <link href="${pageContext.request.contextPath}/statices/css/icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statices/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statices/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statices/css/responsive.css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/statices/js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statices/js/echarts-all.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statices/js/charts/index/chart_index_store.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statices/js/charts/index/for_index_process.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statices/js/charts/produce/chart_pro11.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statices/js/charts/produce/chart_pro3.js"></script>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
          <script src="js/html5shiv.min.js"></script>
          <script src="js/respond.min.js"></script>
    <![endif]-->

</head>

<body class="sticky-header  body1">
<input type="hidden" id="path" value="${pageContext.request.contextPath}">


    <!-- main content start-->
    <div class="main-content" >

        <!-- header section start-->
        <!-- header section end-->


        <!--body wrapper start-->
        <div class="wrapper">
              
          <!--Start Page Title-->
           <div class="page-title-box">
                <h4 class="page-title">首页 </h4>
                <div class="clearfix"></div>
             </div>
              <!--End Page Title-->          
           
                 <!--Start row-->
                 <div class="row">
                     <div class="container">
                         <div class="analytics-box">
                             
                         </div>
                     </div>
                 </div>
                 <!--End row-->
           
                  <!--Start row-->
                  <div class="row">
                   <!--Start info box-->
                   <div class="col-md-3 col-sm-6">
                       <div class="info-box-main">
                          <div class="info-stats">
                              <p id="upStore"></p>
                              <span>库存使用</span>
                          </div>
                          <div class="info-icon text-primary ">
                              <i class="mdi mdi-cart"></i>
                          </div>
                          <div class="info-box-progress">
                             <div class="progress">
                              <div class="progress-bar progress-bar-success" id="store1" role="progressbar" aria-valuenow="48" aria-valuemin="0" aria-valuemax="100">
                             </div>
                          </div>
                          </div>
                       </div>
                   </div>
                   <!--End info box-->
                   
                   <!--Start info box-->
                   <div class="col-md-3 col-sm-6">
                       <div class="info-box-main">
                           <div class="info-stats">
                               <p id="upTeamSum"></p>
                               <span>作业人数</span>
                           </div>
                          <div class="info-icon text-info">
                             <i class="mdi mdi-account-multiple"></i>	
                          </div>
                          <div class="info-box-progress">
                             <div class="progress">
                              <div class="progress-bar progress-bar-info" id="upTeamSum1" role="progressbar" aria-valuenow="48" aria-valuemin="0" aria-valuemax="100" >
                             </div>
                          </div>
                          </div>
                       </div>
                   </div>
                   <!--End info box-->
                
                   <!--Start info box-->
                   <div class="col-md-3 col-sm-6">
                       <div class="info-box-main">
                          <div class="info-stats">
                              <p id="upSum"></p>
                              <span>月产量</span>
                          </div>
                          <div class="info-icon text-warning">
                              <i class="fa fa-dollar"></i>
                          </div>
                          <div class="info-box-progress">
                             <div class="progress">
                              <div class="progress-bar progress-bar-warning" id="upSum1" role="progressbar" aria-valuenow="48" aria-valuemin="0" aria-valuemax="100" >
                              </div>
                          </div>
                          </div>
                       </div>
                   </div>
                   <!--End info box-->
                
                   <!--Start info box-->
                   <div class="col-md-3 col-sm-6">
                       <div class="info-box-main">
                          <div class="info-stats">
                              <p id="pending"></p>
                              <span>暂停工单</span>
                          </div>
                          <div class="info-icon text-danger">
                              <i class="mdi mdi-weight"></i>
                          </div>
                          <div class="info-box-progress">
                             <div class="progress">
                              <div class="progress-bar progress-bar-danger" id="pending1" role="progressbar" aria-valuenow="48" aria-valuemin="0" aria-valuemax="100" >
                             </div>
                          </div>
                          </div>
                       </div>
                   </div>
                   <!--End info box-->
                
                  </div>
                  <!--End row-->
                  
                             
                  
                <!--Start row-->

                <div class="row">
                    <shiro:hasAnyRoles name="产销管理部,生产部,系统管理">
                     <div class="col-md-12">
                         <div class="white-box"></div>

                         <h2 class="header-title">生产进度计划分析</h2>
                         <div id="chart_pro3" style="width:800px;height:500px;margin-left: 50px"></div>

                         <h2 class="header-title" style="margin-top: -150px">产能组成分析</h2>
                         <div id="chart_pro11" style="width:800px;height:550px;margin-left: 50px"></div>

                     </div>
                    </shiro:hasAnyRoles>
                </div>

                     
                     

                 <!-- /col-md-6-->

                     

                <!--End row-->
                  
                  
                   <!--Start row-->
            <div class="row">


                 <!-- Start timeline-->
                 <!-- End timeline-->
                       
                    
                     <!-- Start inbox widget-->
                     <div class="col-md-12">
                        <div class="white-box">
                          <h2 class="header-title"> 生产进度 </h2>
                            <div class="table-responsive">
                              <table class="table table-hover">
                                <thead>
                                  <tr>
                                    <th>#</th>
                                    <th>生产机种</th>
                                    <th >开始日期</th>
                                    <th>结束日期</th>
                                    <th>状态</th>
                                    <th>进度</th>
                                  </tr>
                                </thead>
                                <tbody id="forIndexProcess">
                                </tbody>
                              </table>
                            </div>
                                
                        </div>
                       </div>
					<!-- Start inbox widget-->
                   </div>
                   <!--End row-->
			   
			    </div>
        <!-- End Wrapper-->


        <!--Start  Footer -->
         <!--End footer -->

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
    
    <!--Begin Page Level Plugin-->
	<script src="${pageContext.request.contextPath}/statices/plugins/morris-chart/morris.js"></script>
    <script src="${pageContext.request.contextPath}/statices/plugins/morris-chart/raphael-min.js"></script>
    <script src="${pageContext.request.contextPath}/statices/plugins/jquery-sparkline/jquery.charts-sparkline.js"></script>
    <script src="${pageContext.request.contextPath}/statices/pages/dashboard.js"></script>
    <!--End Page Level Plugin-->
   

</body>

</html>
