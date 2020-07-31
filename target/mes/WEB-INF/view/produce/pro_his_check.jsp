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
                           <form class="js-validation-bootstrap form-horizontal" id="checkForm" action="${pageContext.request.contextPath}/orderCheck/check" method="post">
                                 <div class="col-md-10 form-control">
                                     <input class="form-control" value="工单序号:&nbsp;${orderid}" type="text">
                                 </div>

                           <table id="example" class="display table">
                               <thead>
                               <tr>
                                   <th>审核人</th>
                                   <th>审核时间</th>
                                   <th>审核结果</th>
                                   <th>审核意见</th>
                               </tr>
                               </thead>
                               <tbody>

                               <c:forEach items="${pageInfo.list}" var="oc">
                                   <tr>
                                       <td>${oc.employee.name}</td>
                                       <td><fmt:formatDate value="${oc.checkdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                       <td>${oc.result}</td>
                                       <td>${oc.comm}</td>
                                   </tr>
                               </c:forEach>

                               </tbody>
                           </table>

                              <div class="col-md-8 col-md-offset-3">
                                  <a class="btn  btn-primary" href="${pageContext.request.contextPath}/trace/list">返回</a>
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
