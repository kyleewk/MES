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
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
          <script src="js/html5shiv.min.js"></script>
          <script src="js/respond.min.js"></script>
    <![endif]-->

</head>

<body class="sticky-header body1">
<input type="hidden" id="path" value="${pageContext.request.contextPath}">



    
    <!-- main content start-->
    <div class="main-content" >


        <!--body wrapper start-->
        <div class="wrapper">
              
              <!--Start Page Title-->
               <div class="page-title-box">
                    <h4 class="page-title">生产工单</h4>
                    <ol class="breadcrumb">
                        <li class="active">
                            生产工单
                        </li>
                    </ol>
                    <div class="clearfix"></div>
                 </div>
                  <!--End Page Title-->          
           
           
               <!--Start row-->
               <div class="row">
                   <div class="col-md-12">
                       <div class="white-box">  
                       <h2 class="header-title">生产工单</h2>

                         <form class="js-validation-bootstrap form-horizontal" id="checkForm" action="${pageContext.request.contextPath}/order/add" method="post">

                             <input type="hidden" id="nextSn">
                             <div class="form-group">
                                 <label class="col-md-2 control-label">机种</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="machinetype" value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label" for="val-skill">产线安排<span class="text-danger">*</span></label>
                                 <div class="col-md-10">
                                     <select class="form-control" id="val-skill" name="productline">
                                         <option value="0">请选择</option>
                                         <option value="1">1线</option>
                                         <option value="2">2线</option>
                                         <option value="3">3线</option>
                                         <option value="4">4线</option>
                                         <option value="5">5线</option>
                                     </select>
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">机台派工</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="device" value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">物料发放</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="materiel" value="" type="text">
                                 </div>
                             </div>

                             <div class="form-group">
                                 <label class="col-md-2 control-label" for="val-skill">班组派工<span class="text-danger">*</span></label>
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
                                 <label class="col-md-2 control-label">申请人</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="leader" value="${emp.sn}" type="hidden">
                                     <input class="form-control" value="${emp.name}" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">目标产量</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="targetnum" value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="control-label col-md-2">开始时间</label>
                                 <div class="col-md-10">
                                     <div class="input-group">
                                         <input type="text" name="starttime" class="form-control" placeholder="yyyy-MM-dd" id="datepicker-autoclose">
                                         <span class="input-group-addon b-0 text-white"><i class="icon-calender"></i></span>
                                     </div>
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="control-label col-md-2">结束时间</label>
                                 <div class="col-md-10">
                                     <div class="input-group">
                                         <input type="text" name="endtime" class="form-control" placeholder="yyyy-MM-dd" id="datepicker-autoclose1">
                                         <span class="input-group-addon b-0 text-white"><i class="icon-calender"></i></span>
                                     </div>
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">关联工单</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="connectid" value="" type="text">
                                 </div>
                             </div>


                          <div class="form-group" style="margin-top: 50px" align="center">
                            <div class="col-md-8 col-md-offset-3">
                                <a type="button" class="btn  btn-primary"  href="${pageContext.request.contextPath}/order/list">返回</a>
                              <button type="submit" class="btn  btn-primary" onclick="subForm('savee')" >保存</button>
                              <button type="submit" class="btn  btn-primary" onclick="subForm('submm')"  >提交</button>
                            </div>
                          </div>
                        </form>
                       </div>
                    </div>
                </div>
                 <!-- end row --> 
 
            </div>


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
    <script src="${pageContext.request.contextPath}/statices/js/order/checkform.js"></script>



</body>
<script>

    // Date Picker
    jQuery('#datepicker-autoclose').datepicker({
        autoclose: true,
        todayHighlight: true,
        format: 'yyyy-mm-dd'
    });
    jQuery('#datepicker-autoclose1').datepicker({
        autoclose: true,
        todayHighlight: true,
        format: 'yyyy-mm-dd'
    });


</script>
</html>
