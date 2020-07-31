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

                         <form class="js-validation-bootstrap form-horizontal" action="base_forms_validation.jsp" method="post">
                             <div class="form-group">
                                 <label class="col-md-2 control-label">工单序号</label>
                                 <div class="col-md-10">
                                     <input class="form-control" readonly="" value="01" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label" for="val-skill">产线安排</label>
                                 <div class="col-md-10">
                                     <select class="form-control" readonly="" id="val-skill" name="val-skill">
                                         <option value="">请选择</option>
                                         <option value="demo1" selected>1线</option>
                                         <option value="demo2">2线</option>
                                         <option value="demo3">3线</option>
                                         <option value="demo4">4线</option>
                                         <option value="demo5">5线</option>
                                     </select>
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">机台派工</label>
                                 <div class="col-md-10">
                                     <input class="form-control" readonly="" value="AGV" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">物料发放</label>
                                 <div class="col-md-10">
                                     <input class="form-control" readonly="" value="M001" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label" for="val-skill">班组派工</label>
                                 <div class="col-md-10">
                                     <select class="form-control" readonly="" id="val-skill" name="val-skill">
                                         <option value="">请选择</option>
                                         <option value="demo1" selected>1班</option>
                                         <option value="demo2">2班</option>
                                         <option value="demo3">3班</option>
                                         <option value="demo4">4班</option>
                                         <option value="demo5">5班</option>
                                     </select>
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">负责人</label>
                                 <div class="col-md-10">
                                     <input class="form-control" readonly="" value="张三" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">目标产量</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="targetnum" readonly="" value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">修改原因</label>
                                 <div class="col-md-10">
                                     <input class="form-control" readonly="" value="良率异常" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">修改内容</label>
                                 <div class="col-md-10">
                                     <input class="form-control" readonly="" value="增加目检" type="text">
                                 </div>
                             </div>

                          <div class="form-group" style="margin-top: 50px" align="center">
                              <div class="form-group">
                                  <label class="col-md-2 control-label">审核意见</label>
                                  <div class="col-md-10">
                                      <textarea class="form-control" readonly="" rows="5">
                                          我莫得意见
                                      </textarea>
                                  </div>
                              </div>
                              <div class="col-md-8 col-md-offset-3">
                                  <a class="btn  btn-primary" href="pro_check_list.jsp">返回</a>
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
    <!-- End core plugin -->

    <!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="${pageContext.request.contextPath}/statices/plugins/jquery-validation/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/statices/pages/validation-custom.js"></script>
    <!-- BEGIN PAGE LEVEL SCRIPTS -->


</body>

</html>
