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
                    <h4 class="page-title">质量管理</h4>
                    <ol class="breadcrumb">
                        <li class="active">
                            增加质检日志
                        </li>
                    </ol>
                    <div class="clearfix"></div>
                 </div>
                  <!--End Page Title-->          
           
           
               <!--Start row-->
               <div class="row">
                   <div class="col-md-12">
                       <div class="white-box">  
                       <h2 class="header-title">新增</h2>

                         <form class="js-validation-bootstrap form-horizontal" action="${pageContext.request.contextPath}/qualitylog/addlog" method="post">
                             <div class="form-group">
                                 <label class="col-md-2 control-label">工单序号</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="orderid" value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">机种</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="machinetype" value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label" >班组派工<span class="text-danger">*</span></label>
                                 <div class="col-md-10">
                                     <select class="form-control" id="val-skill1" name="team">
                                         <option value="0">请选择</option>
                                         <option value="1">1班</option>
                                         <option value="2">2班</option>
                                         <option value="3">3班</option>
                                         <option value="4">4班</option>
                                         <option value="5">5班</option>
                                     </select>
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label" >是否有异常</label>
                                 <div class="col-md-10">
                                     <div class="radio">
                                         <input type="radio" name="status" value="0" checked>
                                         <label >无异常</label>
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <input type="radio" name="status" value="1">
                                         <label >有异常</label>
                                     </div>
                                 </div>
                             </div>
                             <div class="form-group" style="margin-top: 50px" align="center">
                                 <label class="col-md-2 control-label">异常原因</label>
                                 <div class="col-md-10">
                                     <textarea class="form-control" name="reason" rows="5"></textarea>
                                 </div>
                             </div>



                          <div class="form-group" style="margin-top: 50px" align="center">
                              <div class="col-md-8 col-md-offset-3">
                                  <a type="button" class="btn  btn-primary"  href="${pageContext.request.contextPath}/qualitylog/list">返回</a>
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
            todayHighlight: true,
        format: 'yyyy-mm-dd'
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
