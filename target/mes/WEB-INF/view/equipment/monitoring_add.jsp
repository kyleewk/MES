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
    <link href="${pageContext.request.contextPath}/statices/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
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
                    <h4 class="page-title">监控信息</h4>
                    <div class="clearfix"></div>
                 </div>
                  <!--End Page Title-->          
           
           
               <!--Start row-->
               <div class="row">
                   <div class="col-md-12">
                       <div class="white-box">  
                       <h2 class="header-title">监控信息</h2>

                         <form class="js-validation-bootstrap form-horizontal" action="${pageContext.request.contextPath}/monitoring/add" method="post">
                             <div class="form-group">
                                 <label class="col-md-2 control-label">监控序号</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="id"  value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">设备名称</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="devicename" value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">检查检测点</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="checkpoint" value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">检测内容</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="detection" value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">标准</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="standard" value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="control-label col-md-2">记录日期</label>
                                 <div class="col-md-10">
                                     <div class="input-group">
                                         <input type="text" class="form-control" name="recorddate" placeholder="mm/dd/yyyy" id="datepicker-autoclose">
                                         <span class="input-group-addon b-0 text-white"><i class="icon-calender"></i></span>
                                     </div>
                                 </div>
                             </div>

                             <div class="form-group" style="margin-top: 50px" align="center">
                                 <div class="form-group">
                                     <label class="col-md-2 control-label">问题记录</label>
                                     <div class="col-md-10">
                                         <textarea name="record" class="form-control" rows="5"></textarea>
                                     </div>
                                 </div>
                                 <div class="col-md-8 col-md-offset-3">
                                     <a class="btn  btn-primary"  href="${pageContext.request.contextPath}/monitoring/list">返回</a>
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
    <script src="${pageContext.request.contextPath}/statices/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
    <!-- End core plugin -->

    <!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="${pageContext.request.contextPath}/statices/plugins/jquery-validation/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/statices/pages/validation-custom.js"></script>
    <!-- BEGIN PAGE LEVEL SCRIPTS -->

    <script>

        // Date Picker
        jQuery('#datepicker').datepicker();
        jQuery('#datepicker-autoclose').datepicker({
            autoclose: true,
            todayHighlight: true
        });
        jQuery('#datepicker-autoclose1').datepicker({
            autoclose: true,
            todayHighlight: true
        });
        jQuery('#datepicker-inline').datepicker();
        jQuery('#datepicker-multiple-date').datepicker({
            format: "mm/dd/yyyy",
            clearBtn: true,
            multidate: true,
            multidateSeparator: ","
        });
        jQuery('#date-range').datepicker({
            toggleActive: true
        });

    </script>

</body>

</html>
