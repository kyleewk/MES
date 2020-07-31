<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    


</head>

<body class="sticky-header body1">




    
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

                         <form class="js-validation-bootstrap form-horizontal" id="checkForm" action="${pageContext.request.contextPath}/order/get?id=${order.id}" method="post">
                             <div class="form-group">
                                 <label class="col-md-2 control-label">机种</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="machinetype" value="${order.machinetype}" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label" for="val-skill">产线安排</label>
                                 <div class="col-md-10">
                                     <select class="form-control"  id="val-skill1" name="productline">
                                         <option value="0" >请选择</option>
                                         <option value="1" ${order.productline==1?"selected='selected'":""}>1线</option>
                                         <option value="2" ${order.productline==2?"selected='selected'":""}>2线</option>
                                         <option value="3" ${order.productline==3?"selected='selected'":""}>3线</option>
                                         <option value="4" ${order.productline==4?"selected='selected'":""}>4线</option>
                                         <option value="5" ${order.productline==5?"selected='selected'":""}>5线</option>
                                     </select>
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">机台派工</label>
                                 <div class="col-md-10">
                                     <input class="form-control"  name="device" value="${order.device}" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">物料发放</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="materiel"  value="${order.materiel}" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label" for="val-skill">班组派工</label>
                                 <div class="col-md-10">
                                     <select class="form-control"  id="val-skill" name="team">
                                         <option value="0" ${order.team==0?"selected='selected'":""}>请选择班组:</option>
                                         <option value="1" ${order.team==1?"selected='selected'":""}>1组</option>
                                         <option value="2" ${order.team==2?"selected='selected'":""}>2组</option>
                                         <option value="3" ${order.team==3?"selected='selected'":""}>3组</option>
                                         <option value="4" ${order.team==4?"selected='selected'":""}>4组</option>
                                         <option value="5" ${order.team==5?"selected='selected'":""}>5组</option>
                                     </select>
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">申请人</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="leader"  value="${order.employee.sn}" type="hidden">
                                     <input class="form-control"   value="${order.employee.name}" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">目标产量</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="targetnum"  value="${order.targetnum}" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="control-label col-md-2">开始时间</label>
                                 <div class="col-md-10">
                                     <div class="input-group">
                                         <input type="text" name="starttime" value="<fmt:formatDate value="${order.starttime}" pattern="yyyy-MM-dd"/>" class="form-control" placeholder="yyyy-MM-dd" id="datepicker-autoclose">
                                         <span class="input-group-addon b-0 text-white"><i class="icon-calender"></i></span>
                                     </div>
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="control-label col-md-2">结束时间</label>
                                 <div class="col-md-10">
                                     <div class="input-group">
                                         <input type="text" name="endtime" value="<fmt:formatDate value="${order.endtime}" pattern="yyyy-MM-dd"/>" class="form-control" placeholder="yyyy-MM-dd" id="datepicker-autoclose1">
                                         <span class="input-group-addon b-0 text-white"><i class="icon-calender"></i></span>
                                     </div>
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">关联工单</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="connectid" value="${order.connectid}" type="text">
                                 </div>
                             </div>

                          <div class="form-group" style="margin-top: 50px" align="center">
                              <div class="col-md-8 col-md-offset-3">
                                      <a type="button" class="btn  btn-primary"  href="${pageContext.request.contextPath}/order/list">返回</a>
                                  <button type="submit" class="btn  btn-primary" onclick="subForm2('savee')" >保存</button>
                                  <button type="submit" class="btn  btn-primary" onclick="subForm2('submm')"  >提交</button>
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
    <script src="${pageContext.request.contextPath}/statices/js/order/checkform.js"></script>
    <!-- BEGIN PAGE LEVEL SCRIPTS -->


</body>
<script>

    // Date Picker
    jQuery('#datepicker-autoclose').datepicker({
        autoclose: true,
        todayHighlight: true,
        format: 'yyyy-mm-dd'
        /*format: 'yyyy-MM-dd hh:ii:ss'*/
    });
    jQuery('#datepicker-autoclose1').datepicker({
        autoclose: true,
        todayHighlight: true,
        format: 'yyyy-mm-dd'
    });


</script>
</html>
