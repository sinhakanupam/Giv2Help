﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<title>Srikandi - Responsive Admin Templates</title>
	<meta name="description" content="Srikandi Responsive Admin Templates" />
	<meta name="keywords" content="resposinve, admin dashboard, admin page, admin template" />
	<meta name="author" content="Candra Dwi Waskito" />
	<link rel="shortcut icon" href="../favicon.ico">
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-reset.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/style.css">
    <!-- css for this page -->
    <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="css/owl.theme.css">
    <link rel="stylesheet" type="text/css" href="css/owl.transitions.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<form id="form1" runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    <!-- start:wrapper -->
    <div id="wrapper">
        <div class="header-top">
            <!-- start:navbar -->
            <nav class="navbar navbar-inverse navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="container">
                    <!-- start:navbar-header -->
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.html"><i class="fa fa-cubes"></i> <strong>Srikan</strong>di<strong>.</strong></a>
                    </div>
                    <!-- end:navbar-header -->
                    <ul class="nav navbar-nav navbar-left top-menu">
                        <!-- start dropdown 1 -->
                       
                        <!-- end dropdown 1 -->
                        <!-- start dropdown 2 -->
                      
                        <!-- end dropdown 2 -->
                        <!-- start dropdown 3 -->
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>


<asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick" />


                        <li id="header_notification_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="fa fa-bell-o"></i>
                                <span class="badge bg-warning"><%=total %></span>
                            </a>
                            <ul class="dropdown-menu extended notification">
                                <div class="notify-arrow notify-arrow-yellow"></div>
                                <li>
                                    <p class="yellow">You have <%=total %> new notifications</p>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-warning"><i class="fa fa-bell"></i></span>
                                    Your <%=count_req_app %> Request has been approved.
                                        <span class="small italic"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-warning"><i class="fa fa-bell"></i></span>
                                       Your <%=count_req_rej %> Request has been Rejected.
                                        <span class="small italic"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-warning"><i class="fa fa-bell"></i></span>
                                       You Received <%=count_req_sent %> procurement.
                                        <span class="small italic"></span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <span class="label label-warning"><i class="fa fa-bell"></i></span>
                                       You Received <%=count_happy %> Post on wall.
                                        <span class="small italic"></span>
                                    </a>
                                </li>
                                
                            </ul>
                        </li>

                        </ContentTemplate>

</asp:UpdatePanel>

                        <!-- end dropdown 3 -->
                    </ul>
                    <ul class="nav navbar-nav navbar-right top-menu">
                        <li>
                            <input type="text" class="form-control input-sm search" placeholder="Search">
                        </li>
                        <!-- user login dropdown start-->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <img alt="" src="<%=small_uid %>">
                                <span class="username"><%=f_name %></span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <div class="log-arrow-up"></div>
                                <li><a href="#"><i class=" fa fa-suitcase"></i>Home</a></li>
                               
                                <li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
            <!-- end:navbar -->
        </div>
        <!-- start:header -->
        <div id="header">
            <div class="overlay">
                <nav class="navbar" role="navigation">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="btn-block btn-drop navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                                <strong>MENU</strong>
                            </button>
                        </div>
                    
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse navbar-ex1-collapse">
                            <ul class="nav navbar-nav">
                                <li class="active">
                                    <a href="index.html">
                                        <div class="text-center">
                                            <i class="fa fa-dashboard fa-3x"></i><br>
                                            Dashboard
                                        </div>
                                    </a>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        <div class="text-center">
                                            <i class="fa fa-laptop fa-3x"></i><br>
                                            UI Element <span class="caret"></span>
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="button.html"><i class="fa fa-lemon-o"></i> Button</a></li>
                                        <li><a href="icon.html"><i class="fa fa-puzzle-piece"></i> Icon</a></li>
                                        <li><a href="panel-well.html"><i class="fa fa-file"></i> Panel & Well</a></li>
                                        <li class="divider"></li>
                                        <li><a href="grid.html"><i class="fa fa-th"></i> Grid</a></li>
                                        <li><a href="breadcrumb-pagination.html"><i class="fa fa-send"></i> Breadcrumb & Pagination</a></li>
                                        <li><a href="jumbotron-thumbnail.html"><i class="fa fa-flag"></i> Jumbotron & Thumbnail</a></li>
                                        <li class="divider"></li>
                                        <li><a href="collapse.html"><i class="fa fa-archive"></i> Collapse</a></li>
                                        <li><a href="typography.html"><i class="fa fa-font"></i> Typography</a></li>
                                        <li><a href="alert-progress-bar.html"><i class="fa fa-coffee"></i> Alert & Progress Bar</a></li>
                                        <li class="divider"></li>
                                        <li><a href="list-media.html"><i class="fa fa-paw"></i> List Media</a></li>
                                        <li><a href="slider.html"><i class="fa fa-legal"></i> Slider</a></li>
                                        <li><a href="popup-notip.html"><i class="fa fa-bullhorn"></i>Popup & Notifications</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        <div class="text-center">
                                             <i class="fa fa-list fa-3x"></i><br>
                                            Form Element <span class="caret"></span>
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="form-component.html"><i class="fa fa-list-alt"></i> Form Component</a></li>
                                        <li><a href="advanced-component.html"><i class="fa fa-list-ul"></i> Advanced Component</a></li>
                                        <li><a href="form-wizard.html"><i class="fa fa-columns"></i> Form Wizard</a></li>
                                        <li class="divider"></li>
                                        <li><a href="form-validation.html"><i class="fa fa-check-square"></i> Form-Validation</a></li>
                                        <li><a href="dropzone-file-upload.html"><i class="fa fa-send"></i> Dropzone File Upload</a></li>
                                        <li><a href="multiple-file-upload.html"><i class="fa fa-file-o"></i> Multiple File Upload</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        <div class="text-center">
                                            <i class="fa fa-folder-open fa-3x"></i><br>
                                            Data Tables <span class="caret"></span>
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="basic-table.html"><i class="fa fa-table"></i> Basic Table</a></li>
                                        <li><a href="responsive-table.html"><i class="fa fa-table"></i> Responsive Table</a></li>
                                        <li><a href="dynamic-table.html"><i class="fa fa-table"></i> Dynamic Table</a></li>
                                        <li><a href="editable-table.html"><i class="fa fa-table"></i> Editable Table</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        <div class="text-center">
                                            <i class="fa fa-bar-chart-o fa-3x"></i><br>
                                            charts <span class="caret"></span>
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="moris.html"><i class="fa fa-bar-chart-o"></i> Moris</a></li>
                                        <li><a href="chartjs.html"><i class="fa fa-bar-chart-o"></i> Chartjs</a></li>
                                        <li><a href="xcharts.html"><i class="fa fa-bar-chart-o"></i> xCharts</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="google-maps.html">
                                        <div class="text-center">
                                            <i class="fa fa-location-arrow fa-3x"></i><br>
                                            Google Maps
                                        </div>
                                    </a>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        <div class="text-center">
                                            <i class="fa fa-home fa-3x"></i><br>
                                            Real Estates <span class="caret"></span>
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="property.html"><i class="fa fa-institution"></i> Property List</a></li>
                                        <li><a href="property-column.html"><i class="fa fa-th-large"></i> Property Column</a></li>
                                        <li><a href="property-detail.html"><i class="fa fa-th-list"></i> Property Detail</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        <div class="text-center">
                                            <i class="fa fa-shopping-cart fa-3x"></i><br>
                                            Stores <span class="caret"></span>
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="store.html"><i class="fa fa-gift"></i> Store List</a></li>
                                        <li><a href="store-detail.html"><i class="fa fa-gift"></i> Store Detail</a></li>
                                        <li><a href="shopping-cart.html"><i class="fa fa-gift"></i> Shopping Cart</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        <div class="text-center">
                                            <i class="fa fa-plus-square fa-3x"></i><br>
                                            Extras Pages <span class="caret"></span>
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="login.html"><i class="fa fa-unlock-alt"></i> Login</a></li>
                                        <li><a href="page-blank.html"><i class="fa fa-square-o"></i> Blank Page</a></li>
                                        <li class="divider"></li>
                                        <li><a href="invoice.html"><i class="fa fa-thumbs-o-up"></i> Invoice</a></li>
                                        <li><a href="princing-table.html"><i class="fa fa-gavel"></i> Princing Table</a></li>
                                        <li><a href="faq.html"><i class="fa fa-sun-o"></i> FAQ</a></li>
                                        <li class="divider"></li>
                                        <li><a href="register.html"><i class="fa fa-plus"></i> Register</a></li>
                                        <li><a href="404.html"><i class="fa fa-warning"></i> 404 Error</a></li>
                                        <li><a href="500.html"><i class="fa fa-warning"></i> 500 Error</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div>
                </nav>
            </div>
        </div>
        <!-- end:header -->

        <!-- start:main -->
        <div class="container">
            <div id="main">
                <!-- start:breadcrumb -->
                 <div class="row" id="home-content">
                    <div class="col-lg-8">
                <!-- end:breadcrumb -->   

               
                        <!--custom chart end-->
                        <!-- start:timeline -->
                        <section class="panel">
                            <div class="panel-body">
                                <div class="text-center mbot30">
                                    <h3 class="timeline-title">Ini Timeline</h3>
                                    <p class="t-info">Wiki kie project timeline</p>
                                </div>

                                <div class="timeline">
                                    <article class="timeline-item">
                                        <div class="timeline-desk">
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <span class="arrow"></span>
                                                    <span class="timeline-icon red"></span>
                                                    <span class="timeline-date">08:25 am</span>
                                                    <h1 class="red">12 July | Sunday</h1>
                                                    <p>Lorem ipsum dolor sit amet consiquest dio</p>
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                    <article class="timeline-item alt">
                                        <div class="timeline-desk">
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <span class="arrow-alt"></span>
                                                    <span class="timeline-icon green"></span>
                                                    <span class="timeline-date">10:00 am</span>
                                                    <h1 class="green">10 July | Wednesday</h1>
                                                    <p><a href="#">Jonathan Smith</a> added new milestone <span><a href="#" class="green">ERP</a></span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                    <article class="timeline-item">
                                        <div class="timeline-desk">
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <span class="arrow"></span>
                                                    <span class="timeline-icon blue"></span>
                                                    <span class="timeline-date">11:35 am</span>
                                                    <h1 class="blue">05 July | Monday</h1>
                                                    <p><a href="#">Anjelina Joli</a> added new album <span><a href="#" class="blue">PARTY TIME</a></span></p>
                                                    <div class="album">
                                                        <a href="#">
                                                            <img alt="" src="img/sm-img-1.jpg">
                                                        </a>
                                                        <a href="#">
                                                            <img alt="" src="img/sm-img-2.jpg">
                                                        </a>
                                                        <a href="#">
                                                            <img alt="" src="img/sm-img-3.jpg">
                                                        </a>
                                                        <a href="#">
                                                            <img alt="" src="img/sm-img-1.jpg">
                                                        </a>
                                                        <a href="#">
                                                            <img alt="" src="img/sm-img-2.jpg">
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                    <article class="timeline-item alt">
                                        <div class="timeline-desk">
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <span class="arrow-alt"></span>
                                                    <span class="timeline-icon purple"></span>
                                                    <span class="timeline-date">3:20 pm</span>
                                                    <h1 class="purple">29 June | Saturday</h1>
                                                    <p>Lorem ipsum dolor sit amet consiquest dio</p>
                                                    <div class="notification">
                                                        <i class=" fa fa-exclamation-sign"></i> New task added for <a href="#">Denial Collins</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                    <article class="timeline-item">
                                        <div class="timeline-desk">
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <span class="arrow"></span>
                                                    <span class="timeline-icon light-green"></span>
                                                    <span class="timeline-date">07:49 pm</span>
                                                    <h1 class="light-green">10 June | Friday</h1>
                                                    <p><a href="#">Jonatha Smith</a> added new milestone <span><a href="#" class="light-green">prank</a></span> Lorem ipsum dolor sit amet consiquest dio</p>
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                                <div class="clearfix">&nbsp;</div>
                            </div>
                        </section>
                        <!-- end:timeline -->
                    </div>
                    <div class="col-lg-4">
                        <!-- start:user info -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <header class="panel-title">
                                    <div class="text-center">
                                        <strong>Welcome!  </strong>  <%=f_name %><strong></strong>
                                    </div>
                                </header>
                            </div>
                            <div class="panel-body">
                                <div class="text-center" id="author">
                                    <img src="<%=uid %>">
                                    <h3><%=name %></h3>
                                    <small class="label label-warning"><%=location %></small>
                                    <p>Hi, You can navigate through menu options above to start donating your things or stuff or to procure stuff for needy ones around you.</p>
                                    <p class="sosmed-author">
                                        <a href="#"><i class="fa fa-facebook" data-toggle="tooltip" data-placement="top" title="" data-original-title="Facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter" data-toggle="tooltip" data-placement="top" title="" data-original-title="Twitter"></i></a>
                                        <a href="#"><i class="fa fa-google-plus" data-toggle="tooltip" data-placement="top" title="" data-original-title="Google Plus"></i></a>
                                        <a href="#"><i class="fa fa-linkedin" data-toggle="tooltip" data-placement="top" title="" data-original-title="Linkedin"></i></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- end:user info -->
                        <!-- start:new earning -->
                        <div class="panel terques-chart">
                            <div class="panel-body chart-texture">
                                <div class="chart">
                                    <div class="heading">
                                        <span>Senin</span>
                                        <strong>$ 67,00 | 25%</strong>
                                    </div>
                                    <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,564,455]"></div>
                                </div>
                            </div>
                            <div class="chart-tittle">
                                <span class="title">New Earning</span>
                                <span class="value">
                                    <a href="#" class="active">Market</a>
                                    |
                                    <a href="#">Referal</a>
                                    |
                                    <a href="#">Online</a>
                                </span>
                            </div>
                        </div>
                        <!-- end:new earning-->

                        <!-- start:total earning-->
                        <div class="panel green-chart">
                            <div class="panel-body">
                                <div class="chart">
                                    <div class="heading">
                                        <span>June</span>
                                        <strong>12 Days | 85%</strong>
                                    </div>
                                    <div id="barchart"></div>
                                </div>
                            </div>
                            <div class="chart-tittle">
                                <span class="title">Total Earning</span>
                                <span class="value">$, 96,23,123</span>
                            </div>
                        </div>
                        <!-- end:total earning -->

                        <!-- start:user info table -->
                        <section class="panel">
                            <div class="panel-body">
                                <a href="#" class="task-thumb">
                                    <img src="img/user/avatar-1.jpg" alt="">
                                </a>
                                <div class="task-thumb-details">
                                    <h1><a href="#">Chef Marinka</a></h1>
                                    <p>Senior Chef Master</p>
                                </div>
                            </div>
                            <table class="table table-hover personal-task">
                                <tbody>
                                    <tr>
                                        <td>
                                            <i class=" fa fa-tasks"></i>
                                        </td>
                                        <td>New Task Issued</td>
                                        <td> 02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class="fa fa-exclamation-triangle"></i>
                                        </td>
                                        <td>Task Pending</td>
                                        <td> 14</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class="fa fa-envelope"></i>
                                        </td>
                                        <td>Inbox</td>
                                        <td> 45</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class=" fa fa-bell-o"></i>
                                        </td>
                                        <td>New Notification</td>
                                        <td> 09</td>
                                    </tr>
                                </tbody>
                            </table>
                        </section>
                        <!-- end:user info table -->
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4">
                        <!--revenue start-->
                        <section class="panel revenue">
                            <div class="revenue-head">
                                <span>
                                    <i class="fa fa-bar-chart-o"></i>
                                </span>
                                <h3>Revenue</h3>
                                <span class="rev-combo pull-right">
                                    June 2013
                                </span>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6 col-sm-6 text-center">
                                        <div class="easy-pie-chart">
                                            <div class="percentage" data-percent="35"><span>35</span>%</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-sm-6">
                                        <div class="chart-info chart-position">
                                            <span class="increase"></span>
                                            <span>Revenue Increase</span>
                                        </div>
                                        <div class="chart-info">
                                            <span class="decrease"></span>
                                            <span>Revenue Decrease</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer revenue-foot">
                                <ul>
                                    <li class="first active">
                                        <a href="javascript:;">
                                            <i class="fa fa-bullseye"></i>
                                            Graphical
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class=" fa fa-th-large"></i>
                                            Tabular
                                        </a>
                                    </li>
                                    <li class="last">
                                        <a href="javascript:;">
                                            <i class=" fa fa-align-justify"></i>
                                            Listing
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </section>
                        <!--revenue end-->
                    </div>
                    <div class="col-lg-8">
                        <!--work progress start-->
                        <section class="panel">
                            <div class="panel-body progress-panel">
                                <div class="task-progress">
                                    <h1>Work Progress</h1>
                                    <p>Chef Marink</p>
                                </div>
                                <div class="task-option">
                                    <select class="btn btn-default">
                                        <option>Chef Marinka</option>
                                        <option>Chef Juna</option>
                                        <option>Chef Aldi</option>
                                    </select>
                                </div>
                            </div>
                            <table class="table table-hover personal-task">
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            Target Sell
                                        </td>
                                        <td>
                                            <span class="badge bg-important">75%</span>
                                        </td>
                                        <td>
                                            <div id="work-progress1"></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>
                                            Product Delivery
                                        </td>
                                        <td>
                                            <span class="badge bg-success">43%</span>
                                        </td>
                                        <td>
                                            <div id="work-progress2"></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>
                                            Payment Collection
                                        </td>
                                        <td>
                                            <span class="badge bg-info">67%</span>
                                        </td>
                                        <td>
                                            <div id="work-progress3"></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>
                                            Work Progress
                                        </td>
                                        <td>
                                            <span class="badge bg-warning">30%</span>
                                        </td>
                                        <td>
                                            <div id="work-progress4"></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>
                                            Delivery Pending
                                        </td>
                                        <td>
                                            <span class="badge bg-primary">15%</span>
                                        </td>
                                        <td>
                                            <div id="work-progress5"></div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </section>
                        <!--work progress end-->
                    </div>
                </div>
            </div>
        </div>
        <!-- end:main -->

        <!-- start:footer -->
        <footer>
            <div class="container">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                   <div class="footer-widget">
                        <h1 class="page-header">Tentang <strong>Srikan</strong>di<strong>.</strong></h1> 
                        <span class="divider-hr"></span>
                        <div class="row content-widget-footer">
                            <div class="col-sm-4">
                                <div class="icon-footer">
                                    <i class="fa fa-cubes fa-4x"></i>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <p>Nah dadi ngene ceritane, si <strong>Srikan</strong>di<strong>.</strong> kuwi tokoh pewayangan sing ono nang Jowo. Rupane ayu banget lan sakti mandraguna koyo tokoh pewayangan sing liyane yo podo - podo saktine.</p>
                            </div>
                        </div>
                   </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="footer-widget">
                        <h1 class="page-header">Fiture <strong>Srikan</strong>di<strong>.</strong></h1>
                        <span class="divider-hr"></span>
                        <div class="row content-widget-footer">
                            <div class="col-sm-4">
                                <div class="icon-footer">
                                    <i class="fa fa-graduation-cap"></i>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <p>Nah nek fiture <strong>Srikan</strong>di<strong>.</strong> kie akeh banget njuk yo ra cukup nek dijelaske siji-siji wong kekuatane wae wuakih bingit. Nek ra percoyo jal takono dewe karo <strong>Srikan</strong>di<strong>.</strong> ne. lah yo ra dijawab. Salae di omongi kok angel bingit.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="footer-widget">
                        <h1 class="page-header">Mbayare <strong>Piro</strong>?</h1>
                        <span class="divider-hr"></span>
                        <div class="row content-widget-footer">
                            <div class="col-sm-4">
                                <div class="icon-footer">
                                    <i class="fa fa-money"></i>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <p>Jan jane nek soal duit kie angel panjalukanne, amergi kui ra ono ketentuane sing mutlak. Namung karang manungso kie yo butuh duit kanggo tuku beras. Yo iki themes dihargai $<strong>18</strong> wae yo aku <strong>#rapopo</strong>.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <div class="footer-bottom">
            <div class="container">
                <div class="footer-bottom-widget">
                    <div class="row">
                        <div class="col-sm-6">
                            <p>
                            <span class="sosmed-footer">
                                <a href="#"><i class="fa fa-facebook" data-toggle="tooltip" data-placement="top" title="Facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter" data-toggle="tooltip" data-placement="top" title="Twitter"></i></a>
                                <a href="#"><i class="fa fa-google-plus" data-toggle="tooltip" data-placement="top" title="Google Plus"></i></a>
                                <a href="#"><i class="fa fa-youtube" data-toggle="tooltip" data-placement="top" title="Youtube"></i></a>
                                <a href="#"><i class="fa fa-linkedin" data-toggle="tooltip" data-placement="top" title="Linkedin"></i></a>
                                <a href="#"><i class="fa fa-instagram" data-toggle="tooltip" data-placement="top" title="Instagram"></i></a>
                                <a href="#"><i class="fa fa-github" data-toggle="tooltip" data-placement="top" title="Github"></i></a>
                            </span>
                            &copy; 2014 <strong>Srikan</strong>di<strong>.</strong></p>
                        </div>
                        <div class="col-sm-6">
                            <p class="footer-bottom-links">
                                <a href="#">About <strong>Srikan</strong>di<strong>.</strong></a>
                                <a href="#">Privacy Policy</a>
                                <a href="#">Terms & Conditions</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end:footer -->

    </div>
    <!-- end:wrapper -->

	<!-- start:javascript -->
	<!-- javascript default for all pages-->
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

    <!-- javascript for Srikandi admin -->
    <script src="js/themes.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js"></script>
    <script src="js/jquery.sparkline.js" type="text/javascript"></script>
    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.min.js"></script>
    <script src="js/respond.min.js" ></script>
	<!-- end:javascript -->

    <!-- start:javascript for this page -->
    <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="js/owl.carousel.js" ></script>
    <script src="js/jquery.customSelect.min.js" ></script>
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>
    <script src="js/count.js"></script>
    <script>
        //owl carousel
        $(document).ready(function () {
            $("#owl-demo").owlCarousel({
                navigation: true,
                slideSpeed: 300,
                paginationSpeed: 400,
                singleItem: true,
                autoPlay: true
            });
        });

        //custom select box

        $(function () {
            $('select.styled').customSelect();
        });

        if ($(".custom-bar-chart")) {
            $(".bar").each(function () {
                var i = $(this).find(".value").html();
                $(this).find(".value").html("");
                $(this).find(".value").animate({
                    height: i
                }, 2000)
            })
        }
    </script>
    <!-- end:javascript for this page -->
    </form>
</body>
</html>	