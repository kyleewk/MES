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
                         <form class="js-validation-bootstrap form-horizontal" action="base_forms_validation.jsp" method="post">
                             <div class="form-group">
                                 <label class="col-md-2 control-label">机种</label>
                                 <div class="col-md-10">
                                     <input class="form-control" readonly="" value="机种" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">工艺名称</label>
                                 <div class="col-md-10">
                                     <input class="form-control" readonly="" value="检验外观" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">修改原因</label>
                                 <div class="col-md-10">
                                     <input class="form-control"  readonly="" value="良率异常" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">修改内容</label>
                                 <div class="col-md-10">
                                     <input class="form-control"  readonly="" value="增加目检" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">修改时间</label>
                                 <div class="col-md-10">
                                     <input class="form-control"  readonly="" value="2020年5月21日" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">申请人</label>
                                 <div class="col-md-10">
                                     <input class="form-control"  readonly="" value="申请人" type="text">
                                 </div>
                             </div>
                             <div align="center">
                                 <img src="${pageContext.request.contextPath}/statices/images/craft1.jpg" style="margin: 0 auto;width: 400px;height: 400px">
                             </div>
                          <div class="form-group" style="margin-top: 50px" align="center">
                              <div class="form-group">
                                  <label class="col-md-2 control-label">审核意见</label>
                                  <div class="col-md-10">
                                      <textarea class="form-control" rows="5"></textarea>
                                  </div>
                              </div>
                            <div class="col-md-8 col-md-offset-3">
                              <a class="btn  btn-primary"  href="check_list.jsp">同意</a>
                                <a class="btn  btn-primary"  href="check_list.jsp">驳回</a>
                                <a class="btn  btn-primary"  href="check_list.jsp">拒绝</a>
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
    <!-- End core plugin -->

    <!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="${pageContext.request.contextPath}/statices/plugins/jquery-validation/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/statices/pages/validation-custom.js"></script>
    <!-- BEGIN PAGE LEVEL SCRIPTS -->


</body>

</html>
