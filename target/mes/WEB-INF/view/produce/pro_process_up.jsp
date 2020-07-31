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
                            生产进度管理
                        </li>
                    </ol>
                    <div class="clearfix"></div>
                 </div>
                  <!--End Page Title-->          
           
           
               <!--Start row-->
               <div class="row">
                   <div class="col-md-12">
                       <div class="white-box">  
                       <h2 class="header-title">每日进度</h2>

                         <form class="js-validation-bootstrap form-horizontal" action="${pageContext.request.contextPath}/process/up?id=${process.id}" method="post">
                             <div class="form-group">
                                 <label class="col-md-2 control-label">工单序号</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="orderid" readonly="" value="${order.id}" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">机种</label>
                                 <div class="col-md-10">
                                     <input class="form-control" readonly="" value="${order.machinetype}" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label" for="val-skill">产线安排</label>
                                 <div class="col-md-10">
                                     <select class="form-control"  id="val-skill1" readonly="" >
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
                                 <label class="col-md-2 control-label">目标产量</label>
                                 <div class="col-md-10">
                                     <input class="form-control"  readonly value="${order.targetnum}" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">开始时间</label>
                                 <div class="col-md-10">
                                     <input class="form-control" readonly="" value="<fmt:formatDate value='${order.starttime}' pattern='yyyy-MM-dd'/>" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">预计结束时间</label>
                                 <div class="col-md-10">
                                     <input class="form-control" readonly="" value="<fmt:formatDate value='${order.endtime}' pattern='yyyy-MM-dd'/>" type="text">
                                 </div>
                             </div>

                             <div class="form-group">
                                 <label class="col-md-2 control-label">实际产量</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="realnum"  value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label">不良品数</label>
                                 <div class="col-md-10">
                                     <input class="form-control" name="ngnum"  value="" type="text">
                                 </div>
                             </div>
                             <div class="form-group">
                                 <label class="col-md-2 control-label" for="val-skill">当前状态</label>
                                 <div class="col-md-10">
                                     <select class="form-control"  id="val-skill" name="status">
                                         <option value="" >请选择</option>
                                         <option value="0" ${process.status==0?"selected='selected'":""}>准备中</option>
                                         <option value="1" ${process.status==1?"selected='selected'":""}>进行中</option>
                                         <option value="2" ${process.status==2?"selected='selected'":""}>已完成</option>
                                         <option value="-1" ${process.status==-1?"selected='selected'":""}>暂停</option>
                                         <option value="-2" ${process.status==-2?"selected='selected'":""}>关闭</option>
                                     </select>
                                 </div>
                             </div>

                             <div class="form-group">
                                 <label class="col-md-2 control-label" for="val-skill">是否关闭工单</label>
                                 <div class="col-md-10">
                                 <div class="radio">
                                 <input type="radio" name="isclosed" value="0">
                                 <label >开启</label>
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <input type="radio" name="isclosed" value="1">
                                 <label >关闭</label>
                                 </div>
                                 </div>
                             </div>

                             <div class="form-group">
                                 <label class="col-md-2 control-label">生产备注</label>
                                 <div class="col-md-10">
                                     <textarea class="form-control" rows="5" name="comm"></textarea>
                                 </div>
                             </div>

                          <div class="form-group" style="margin-top: 50px" align="center">
                            <div class="col-md-8 col-md-offset-3">
                                <a type="button" class="btn  btn-primary"  href="${pageContext.request.contextPath}/process/list">返回</a>
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
    <!-- End core plugin -->

    <!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="${pageContext.request.contextPath}/statices/plugins/jquery-validation/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/statices/pages/validation-custom.js"></script>
    <!-- BEGIN PAGE LEVEL SCRIPTS -->


</body>

</html>
