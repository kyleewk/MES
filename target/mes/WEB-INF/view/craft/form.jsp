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
    <div class="main-content body1" >


        <!--body wrapper start-->
        <div class="wrapper">
              
              <!--Start Page Title-->
               <div class="page-title-box">
                    <h4 class="page-title">表单</h4>
                    <ol class="breadcrumb">
                        <li>
                            <a href="#">Dashboard</a>
                        </li>
                        <li>
                            <a href="#">Form</a>
                        </li>
                        <li class="active">
                            表单
                        </li>
                    </ol>
                    <div class="clearfix"></div>
                 </div>
                  <!--End Page Title-->          
           
           
               <!--Start row-->
               <div class="row">
                   <div class="col-md-12">
                       <div class="white-box">  
                       <h2 class="header-title">表单</h2>
                         <form class="js-validation-bootstrap form-horizontal" action="base_forms_validation.jsp" method="post">
                          <div class="form-group">
                            <label class="col-md-3 control-label" for="val-username">Username <span class="text-danger">*</span></label>
                            <div class="col-md-9">
                              <input class="form-control" type="text" id="val-username" name="val-username" placeholder="Enter User Name">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-3 control-label" for="val-email">Email <span class="text-danger">*</span></label>
                            <div class="col-md-9">
                              <input class="form-control" type="text" id="val-email" name="val-email" placeholder="Enter your  email">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-3 control-label" for="val-password">Password <span class="text-danger">*</span></label>
                            <div class="col-md-9">
                              <input class="form-control" type="password" id="val-password" name="val-password" placeholder="Enter Password">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-3 control-label" for="val-confirm-password">Confirm Password <span class="text-danger">*</span></label>
                            <div class="col-md-9">
                              <input class="form-control" type="password" id="val-confirm-password" name="val-confirm-password" placeholder="Re-enter Password">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-3 control-label" for="val-suggestions">About <span class="text-danger">*</span></label>
                            <div class="col-md-9">
                              <textarea class="form-control" id="val-suggestions" name="val-suggestions" rows="14" placeholder="About"></textarea>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-3 control-label" for="val-skill">Best Skill <span class="text-danger">*</span></label>
                            <div class="col-md-9">
                              <select class="form-control" id="val-skill" name="val-skill">
                                <option value="">Please select</option>
                                <option value="demo1">Demo 1</option>
                                <option value="demo2">Demo 2</option>
                                <option value="demo3">Demo 3</option>
                                <option value="demo4">Demo 4</option>
                                <option value="demo5">Demo 5</option>
                              </select>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-3 control-label" for="val-website">Website <span class="text-danger">*</span></label>
                            <div class="col-md-9">
                              <input class="form-control" type="text" id="val-website" name="val-website" placeholder="http://example.com">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-3 control-label" for="val-digits">Digits <span class="text-danger">*</span></label>
                            <div class="col-md-9">
                              <input class="form-control" type="text" id="val-digits" name="val-digits" placeholder="3">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-3 control-label" for="val-number">Number <span class="text-danger">*</span></label>
                            <div class="col-md-9">
                              <input class="form-control" type="text" id="val-number" name="val-number" placeholder="3.0">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-3 control-label" for="val-range">Range [1, 10] <span class="text-danger">*</span></label>
                            <div class="col-md-9">
                              <input class="form-control" type="text" id="val-range" name="val-range" placeholder="3">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-3 control-label"> Terms <span class="text-danger">*</span></label>
                            <div class="col-md-9">
                              <div class="checkbox primary">
                                <input type="checkbox" id="val-terms" name="val-terms" value="1">
                                <label  class="css-input css-checkbox css-checkbox-primary" for="val-terms" >
                                I agree to the terms
                                </label>
                              </div>
                            </div>
                          </div>
                          <div class="form-group">
                            <div class="col-md-8 col-md-offset-3">
                              <button class="btn  btn-primary" type="submit">Submit</button>
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
