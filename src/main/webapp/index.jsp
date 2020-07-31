<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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
  <title>Home</title>

    <!--Begin  Page Level  CSS -->
    <link href="${pageContext.request.contextPath}/statices/plugins/morris-chart/morris.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statices/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"/>
     <!--End  Page Level  CSS -->
    <link href="${pageContext.request.contextPath}/statices/css/icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statices/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statices/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statices/css/responsive.css" rel="stylesheet">
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

</head>

<body class="sticky-header">


    <!--Start left side Menu-->
    <div class="left-side sticky-left-side">

        <!--logo-->
        <div class="logo">
            <a href="index.jsp"><img src="${pageContext.request.contextPath}/statices/images/logo.png" alt=""></a>
        </div>

        <div class="logo-icon text-center">
            <a href="index.jsp"><img src="${pageContext.request.contextPath}/statices/images/logo-icon.png" alt=""></a>
        </div>
        <!--logo-->

        <div class="left-side-inner">
            <!--Sidebar nav-->
            <ul class="nav nav-pills nav-stacked custom-nav">

                <li><a href="${pageContext.request.contextPath}/index.jsp"><i class="icon-note"></i> <span>主页</span></a></li>
                <shiro:hasAnyRoles name="工艺部,系统管理">
                <li class="menu-list"><a href="#"><i class="icon-layers"></i> <span>工艺管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="${pageContext.request.contextPath}/CraftList/list" target="right">SOP作业指导书管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/WEB-INF/view/craft/check_list.jsp" target="right">SOP作业指导书审核</a></li>
                        <li><a href="${pageContext.request.contextPath}/WEB-INF/view/craft/craft_upload.jsp" target="right"> SOP作业指导书上传</a></li>
                    </ul>
                </li>
                </shiro:hasAnyRoles>

                <shiro:hasAnyRoles name="产销管理部,物料部,生产部,品质部,系统管理">
                <li class="menu-list"><a href="#"><i class="icon-grid"></i> <span>生产任务管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="${pageContext.request.contextPath}/order/list" target="right">工单申请</a></li>
                        <li><a href="${pageContext.request.contextPath}/order/checklist" target="right">工单审核</a></li>
                        <li><a href="${pageContext.request.contextPath}/process/list" target="right">工单跟踪</a></li>
                        <li><a href="${pageContext.request.contextPath}/repair/list" target="right">返修管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/trace/list" target="right">产品追溯</a></li>
                    </ul>
                </li>
                </shiro:hasAnyRoles>

                <shiro:hasAnyRoles name="品质部,系统管理">
                <li class="menu-list"><a href="#"><i class="fa fa-anchor"></i> <span>质量管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="${pageContext.request.contextPath}/quality/list" target="right"> 质量基础数据设定</a></li>
                        <li ><a href="${pageContext.request.contextPath}/qualitylog/list" target="right"> 质量检测管理</a></li>
                    </ul>
                </li>
                </shiro:hasAnyRoles>

                <shiro:hasAnyRoles name="物料部,系统管理">
                <li class="menu-list"><a href="#"><i class="icon-loop"></i> <span>库存管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="${pageContext.request.contextPath}/InvGet/list" target="right"> 领料</a></li>
                        <li ><a href="${pageContext.request.contextPath}/InvSave/list" target="right"> 入库</a></li>
                        <li><a href="${pageContext.request.contextPath}/InvBack/list" target="right">退料</a></li>
                        <li><a href="${pageContext.request.contextPath}/Search/list" target="right">库存查询</a></li>
                    </ul>
                </li>
                </shiro:hasAnyRoles>

                <shiro:hasAnyRoles name="设备部,系统管理">
                <li class="menu-list"><a href="#"><i class="icon-film"></i> <span>设备管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="${pageContext.request.contextPath}/equipment/list" target="right"> 设备信息</a></li>
                        <li ><a href="${pageContext.request.contextPath}/monitoring/list" target="right"> 设备监控</a></li>
                        <li><a href="${pageContext.request.contextPath}/maintain/list" target="right">定期维护</a></li>
                    </ul>
                </li>
                </shiro:hasAnyRoles>

                <shiro:hasAnyRoles name="产销管理部,物料部,生产部,品质部,系统管理">
                <li class="menu-list"><a href="#"><i class="icon-pie-chart"></i> <span>报表管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="${pageContext.request.contextPath}/chart/store" target="right"> 物料管理常用报表</a></li>
                        <li ><a href="${pageContext.request.contextPath}/chart/produce" target="right"> 生产管理常用报表</a></li>
                        <li><a href="${pageContext.request.contextPath}/chart/quality" target="right">品质管理常用报表</a></li>
                    </ul>
                </li>
                </shiro:hasAnyRoles>

                <shiro:hasRole name="系统管理">
                <li><a href="${pageContext.request.contextPath}/WEB-INF/view/show/show_list.jsp" target="right"><i class="icon-location-pin"></i> <span>电子看板管理</span></a></li>
                </shiro:hasRole>


                <shiro:hasRole name="系统管理">
                <li class="menu-list"><a href="#"><i class="icon-folder"></i> <span>组织结构管理</span></a>
                    <ul class="sub-menu-list">
						<li ><a href="${pageContext.request.contextPath}/provider/list" target="right">供应商管理</a></li>
                        <li ><a href="${pageContext.request.contextPath}/client/list" target="right">客户管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/productLine/list" target="right">产线管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/team/list" target="right">班组管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/employee/list" target="right">用户管理</a></li>
                    </ul>
                </li>
                <li class="menu-list"><a href="#"><i class="icon-folder"></i> <span>基础数据管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="${pageContext.request.contextPath}/department/list" target="right"> 部门信息管理</a></li>
                        <li ><a href="${pageContext.request.contextPath}/product/list" target="right"> 产品类型管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/bom/list" target="right">BOM管理</a></li>
                    </ul>
                </li>
                </shiro:hasRole>
                <li><a href="${pageContext.request.contextPath}/employee/logout"><i class="icon-lock"></i> <span>切换账号</span></a></li>
            </ul>
            <!--End sidebar nav-->

        </div>
    </div>
    <!--End left side menu-->
    
    
    <!-- main content start-->
    <div class="main-content1" >

        <!-- header section start-->
        <div class="header-section">

            <a class="toggle-btn"><i class="fa fa-bars"></i></a>

            <form class="searchform">
                <input type="text" class="form-control" name="keyword" placeholder="Search here..." />
            </form>

            <!--notification menu start -->
            <div class="menu-right">
                <ul class="notification-menu">
                    <shiro:hasAnyRoles name="品质部,系统管理">
                    <li class="">
                        <a href="#" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                            <i class="fa fa-bell-o"></i>
                            <span class="badge">1</span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-head pull-right">
                            <h5 class="title">通知</h5>
                            <ul class="dropdown-list normal-list">
                                <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 220px;"><li class="message-list message-scroll-list" style="overflow: hidden; width: auto; height: 220px;">
                                    <a href="${pageContext.request.contextPath}/qualitylog/list" target="right">
                                        <span class="photo"> <img src="${pageContext.request.contextPath}/statices/images/users/avatar-8.jpg" class="img-circle" alt="img"></span>
                                        <span class="subject">mes</span>
                                        <span class="message"> 异常通知</span>
                                        <span class="time">15 minutes ago</span>
                                    </a>

                                </li><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; height: 99.5885px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
                            </ul>
                        </div>

                    </li>
                    </shiro:hasAnyRoles>
                    <li class="">
                        <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <img src="${pageContext.request.contextPath}/statices/images/users/avatar-6.jpg" alt="">
                            ${dept.name}:&nbsp;${emp.name}
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li> <a href="${pageContext.request.contextPath}/employee/logout"> <i class="fa fa-lock"></i> 退出 </a> </li>
                        </ul>
                    </li>

                </ul>
            </div>
            <!--notification menu end -->

        </div>
        <!-- header section end-->


        <!--body wrapper start-->

        <iframe name="right" class="wrapper" src="${pageContext.request.contextPath}/index1.jsp" style="width: 100%;height: 608px"></iframe>
<!--         End Wrapper


        Start  Footer-->
        <footer class="footer-main">Copyright &copy; 2018.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></footer>
         <!--End footer-->

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
    
    <!--Begin Page Level Plugin-->
	<script src="${pageContext.request.contextPath}/statices/plugins/morris-chart/morris.js"></script>
    <script src="${pageContext.request.contextPath}/statices/plugins/morris-chart/raphael-min.js"></script>
    <script src="${pageContext.request.contextPath}/statices/plugins/jquery-sparkline/jquery.sparkline.min.js"></script>
    <script src="${pageContext.request.contextPath}/statices/pages/dashboard.js"></script>
    <!--End Page Level Plugin-->
   

</body>

</html>
