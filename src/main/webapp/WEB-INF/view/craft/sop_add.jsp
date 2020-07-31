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

</head>

<body class="sticky-header body1">



    
    <!-- main content start-->
    <div class="main-content " >



        <!--body wrapper start-->
        <div class="wrapper">
              
              <!--Start Page Title-->
               <div class="page-title-box">
                    <h4 class="page-title">SOP</h4>
                    <ol class="breadcrumb">
                        <li class="active">
                            SOP
                        </li>
                    </ol>
                    <div class="clearfix"></div>
                 </div>
                  <!--End Page Title-->          
           
           
               <!--Start row-->
               <div class="row">
                   <div class="col-md-12">
                       <div class="white-box">  
                       <h2 class="header-title">SOP</h2>
                         <form class="js-validation-bootstrap form-horizontal" action="${pageContext.request.contextPath}/CraftList/add" method="post">
                             <div class="form-group">
                                 <label class="col-md-2 control-label">机种</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="machineType" value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">工艺名称</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="craftName" value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">操作步骤</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="steps" value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">设备要求</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="device" value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">物料准备</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="materiel" value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="control-label col-md-2">制作时间</label>
                                 <div class="col-md-10">
                                     <div class="input-group">
                                         <input type="text" name="createDate" class="form-control" placeholder="yyyy-MM-dd" id="datepicker-autoclose">
                                         <span class="input-group-addon b-0 text-white"><i class="icon-calender"></i></span>
                                     </div>
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">设计人</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="designer" value="" type="text">
                                 </div>
                             </div>
                             <div align="center">
                                 <label class="col-md-2 control-label">上传图片</label>
                                 <div class="row">
                                     <div class="col-md-12">
                                         <form action="#" class="dropzone" id="dropzone">
                                             <div class="fallback">
                                                 <input name="file" type="file" multiple />
                                             </div>

                                         </form>
                                     </div>
                                 </div>
                             </div>
                          <div class="form-group" style="margin-top: 50px" align="center">
                            <div class="col-md-8 col-md-offset-3">
                              <a class="btn  btn-primary"  href="${pageContext.request.contextPath}/CraftList/list">返回</a>
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
            format: "yyyy-MM-dd/",
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
