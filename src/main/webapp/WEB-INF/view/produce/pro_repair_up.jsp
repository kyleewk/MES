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
                    <h4 class="page-title">返修管理</h4>
                    <ol class="breadcrumb">
                        <li class="active">
                            返修记录
                        </li>
                    </ol>
                    <div class="clearfix"></div>
                 </div>
                  <!--End Page Title-->          
           
           
               <!--Start row-->
               <div class="row">
                   <div class="col-md-12">
                       <div class="white-box">  
                       <h2 class="header-title">返修记录</h2>

                           <form class="js-validation-bootstrap form-horizontal" action="${pageContext.request.contextPath}/repair/get?id=${repair.id}" method="post">                             <div class="form-group">
                                 <label class="col-md-2 control-label">返修机种</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="repairtype"  value="${repair.repairtype}" type="text">
                                 </div>
                             </div>
                             <div class="form-group" style="margin-top: 50px" align="center">
                                     <label class="col-md-2 control-label">返修原因</label>
                                     <div class="col-md-10">
                                         <textarea class="form-control" name="modifyreason" rows="5">${repair.modifyreason}</textarea>
                                     </div>
                             </div>
                             <div class="form-group">
                                 <label class="control-label col-md-2">返修时间</label>
                                 <div class="col-md-10">
                                     <div class="input-group">
                                         <input type="text" class="form-control" name="modifydate" value="<fmt:formatDate value='${repair.modifydate}' pattern='yyyy-MM-dd'/>" placeholder="yyyy-MM-dd" id="datepicker-autoclose">
                                         <span class="input-group-addon b-0 text-white"><i class="icon-calender"></i></span>
                                     </div>
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label" for="val-skill">产线安排<span class="text-danger">*</span></label>
                                 <div class="col-md-10">
                                     <select class="form-control"  id="val-skill" name="repairteam">
                                         <option value="0">请选择</option>
                                         <option value="1" ${repair.repairteam.equals(1)?"selected='selected'":""}>1班</option>
                                         <option value="2" ${repair.repairteam.equals(2)?"selected='selected'":""}>2班</option>
                                         <option value="3" ${repair.repairteam.equals(3)?"selected='selected'":""}>3班</option>
                                         <option value="4" ${repair.repairteam.equals(4)?"selected='selected'":""}>4班</option>
                                         <option value="5" ${repair.repairteam.equals(5)?"selected='selected'":""}>5班</option>
                                     </select>
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">负责人</label>
                                 <div class="col-md-10">
                                     <input class="form-control"name="applicantname" value="${repair.applicantname}" type="text">
                                 </div>
                             </div>

                          <div class="form-group" style="margin-top: 50px" align="center">
                            <div class="col-md-8 col-md-offset-3">
                                <a type="button" class="btn  btn-primary"  href="${pageContext.request.contextPath}/repair/list">返回</a>
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
        jQuery('#datepicker-inline').datepicker();
        jQuery('#datepicker-multiple-date').datepicker({
            format: "yyyy-MM-dd",
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
