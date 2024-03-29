﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prod_req.aspx.cs" Inherits="prod_req" %>

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
     <link rel="stylesheet" type="text/css" href="assets/woothemes-FlexSlider/flexslider.css">
</head>
<body>
<form runat="server">

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
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="fa fa-tasks"></i>
                                <span class="badge bg-success">6</span>
                            </a>
                            <ul class="dropdown-menu extended tasks-bar">
                                <div class="notify-arrow notify-arrow-green"></div>
                                <li>
                                    <p class="green">You have 6 pending tasks</p>
                                </li>
                                <li>
                                     <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Dashboard v1.3</div>
                                            <div class="percent">40%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Database Update</div>
                                            <div class="percent">60%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                <span class="sr-only">60% Complete (warning)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Iphone Development</div>
                                            <div class="percent">87%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 87%">
                                                <span class="sr-only">87% Complete</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Mobile App</div>
                                            <div class="percent">33%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 33%">
                                                <span class="sr-only">33% Complete (danger)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Dashboard v1.3</div>
                                            <div class="percent">45%</div>
                                        </div>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                                                <span class="sr-only">45% Complete</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="external">
                                    <a href="#">See All Tasks</a>
                                </li>
                            </ul>
                        </li>
                        <!-- end dropdown 1 -->
                        <!-- start dropdown 2 -->
                        <li id="header_inbox_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-important">5</span>
                            </a>
                            <ul class="dropdown-menu extended inbox">
                                <div class="notify-arrow notify-arrow-red"></div>
                                <li>
                                    <p class="red">You have 5 new messages</p>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="./img/avatar-mini.jpg"></span>
                                            <span class="subject">
                                            <span class="from">Jonathan Smith</span>
                                            <span class="time">Just now</span>
                                        </span>
                                        <span class="message">
                                            Hello, this is an example msg.
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="./img/avatar-mini2.jpg"></span>
                                            <span class="subject">
                                            <span class="from">Jhon Doe</span>
                                            <span class="time">10 mins</span>
                                        </span>
                                        <span class="message">
                                             Hi, Jhon Doe Bhai how are you ?
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="./img/avatar-mini3.jpg"></span>
                                            <span class="subject">
                                            <span class="from">Jason Stathum</span>
                                            <span class="time">3 hrs</span>
                                        </span>
                                        <span class="message">
                                            This is awesome dashboard.
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="./img/avatar-mini4.jpg"></span>
                                            <span class="subject">
                                            <span class="from">Jondi Rose</span>
                                            <span class="time">Just now</span>
                                        </span>
                                        <span class="message">
                                            Hello, this is metrolab
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">See all messages</a>
                                </li>
                            </ul>
                        </li>
                        <!-- end dropdown 2 -->
                        <!-- start dropdown 3 -->
                        <li id="header_notification_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="fa fa-bell-o"></i>
                                <span class="badge bg-warning">7</span>
                            </a>
                            <ul class="dropdown-menu extended notification">
                                <div class="notify-arrow notify-arrow-yellow"></div>
                                <li>
                                    <p class="yellow">You have 7 new notifications</p>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                        Server #3 overloaded.
                                        <span class="small italic">34 mins</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-warning"><i class="fa fa-bell"></i></span>
                                        Server #10 not respoding.
                                        <span class="small italic">1 Hours</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                        Database overloaded 24%.
                                        <span class="small italic">4 hrs</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-success"><i class="fa fa-plus"></i></span>
                                        New user registered.
                                        <span class="small italic">Just now</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-info"><i class="fa fa-bullhorn"></i></span>
                                        Application error.
                                        <span class="small italic">10 mins</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">See all notifications</a>
                                </li>
                            </ul>
                        </li>
                        <!-- end dropdown 3 -->
                    </ul>
                    <ul class="nav navbar-nav navbar-right top-menu">
                        <li>
                            <input type="text" class="form-control input-sm search" placeholder="Search">
                        </li>
                        <!-- user login dropdown start-->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <img alt="" src="img/avatar1_small.jpg">
                                <span class="username">Jhon Doe</span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <div class="log-arrow-up"></div>
                                <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                                <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                                <li><a href="#"><i class="fa fa-bell-o"></i> Notification</a></li>
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
                                <li>
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
                                <li class="dropdown active">
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
                
                <!-- end:breadcrumb -->

                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header">
                             Request Received
                        </h2>


                    </div>
                </div>
                
                <!-- start:basic table -->
                   
                <div class="row">
                    <div class="col-lg-12">

     
    
        <asp:Panel ID="Panel1" runat="server">
        
    
                        <section class="panel">
                            <header class="panel-heading">
                               Below are all the request which you have received, Use control in right to take appropriate action.
                            </header>
                          


<asp:Repeater ID="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand">
<HeaderTemplate>
<table class="table table-striped table-advance table-hover">
                                <thead>
                                    <tr>
                                        <th><i class="fa fa-bullhorn"></i> Requester</th>
                                        <th class="hidden-phone"><i class="fa fa-question-circle"></i> Product</th>
                                        <th><i class="fa fa-bookmark"></i> Requester Location</th>
                                        <th><i class=" fa fa-edit"></i> Status</th>
                                        <th></th>
                                    </tr>
                                </thead>
</HeaderTemplate>

<ItemTemplate>
 <tbody>
                                    <tr>
                                        
                                        

                                        <asp:Label ID="email" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.email") %>' Visible="False"></asp:Label>
            <asp:Label ID="phone" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.phone") %>' Visible="False"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.req_id") %>' Visible="false"></asp:Label>        
        
                                 
                                 
                                 <td><asp:Label ID="Label7" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.f_name") %>'></asp:Label></td>
                                 <td><asp:Label ID="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.name") %>'></asp:Label></td>
                                 
                                 <td>
          <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.country") %>'></asp:Label>,
       
           <asp:Label ID="Label9" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.city") %>'></asp:Label></td>
     
     <td><span class="label label-info label-mini"><%# DataBinder.Eval(Container, "DataItem.status") %></span></td>













                                        <td>
                                           <asp:LinkButton ID="LinkButton1" class="btn btn-success btn-xs" CommandName="request_coming" runat="server">View Details</asp:LinkButton>
                                            <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                        </td>
                                    </tr>
                                  </tbody>
</ItemTemplate>

<FooterTemplate>
</table>
</FooterTemplate>

</asp:Repeater>

                            
                               
                            
                        </section>
                        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
      
      
        <div class="panel panel-info">

                            <div class="panel-heading">
                                <header class="panel-title">
                                   Request details
                                    <asp:LinkButton ID="LinkButton2" style="float: right;" onclick="LinkButton2_Click" runat="server">GO BACK TO REQUEST PAGE</asp:LinkButton>
   </header>
                            </div>
                            <div class="panel-body">
                         
                                <asp:Panel ID="action_well" runat="server">
                                
                         <div class="well well-warning">
                            <h3>Action Window</h3>
                            Please use control below to take action.
                            
                            <br />
                            <br />
                             
                             <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                 ForeColor="Black" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                 Width="40%">
                                 <asp:ListItem>ACCEPT</asp:ListItem>
                                 <asp:ListItem>HOLD</asp:ListItem>
                                 <asp:ListItem>REJECT</asp:ListItem>
                             </asp:DropDownList>

           <a href="#myModal" data-toggle="modal" class="btn btn-drop btn-success">
                                    Submit
                                    </a>   
                  </div>
                  </asp:Panel>

                                <asp:Panel ID="approved_well" runat="server">
                                
                   <div class="well well-success">
                            <h3>Request already approved</h3>
                            This request is already approved by you.
                        </div>
                        </asp:Panel>
                                <asp:Panel ID="reject_well" runat="server">

                                <div class="well well-danger">
                            <h3>Request Rejected</h3>
                            You have rejected this request
                        </div>
                                </asp:Panel>




                               <div class="panel panel-info panel-drop">
                            <div class="panel-heading">
                                <header class="panel-title">
                                   Requester Details  -  Our Team has verified all details of this member.</header>
                            </div>
                            <div class="panel-body">
                                <div class="col-lg-6 col-md-6">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/verify.png" />
            </div>

            <div class="col-lg-6 col-md-6">
             

             <div class="panel panel-info">
                            <div class="panel-heading">
                                <header class="panel-title">
                                  Requester Information</header>
                            </div>
                            <div class="panel-body">
                               



                
                 <h3>
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></h3>

                 <section class="panel">
                 <div class="panel-body">

                 <form class="form-horizontal">

                                    <div class="form-group">
                                        <label class="control-label col-md-6">Facebook Link:</label>
                                        <div class="col-md-6">
                                            <div class="input-group bootstrap-timepicker">
                                               <a href="<%=link %>" target="_blank">Click to Visit on Facebook</a>
                                            </div>
                                        </div>
                                    </div>

                                 <br />


                                      <div class="form-group">
                                        <label class="control-label col-md-6">Organisation:</label>
                                        <div class="col-md-6">
                                            <div class="input-group bootstrap-timepicker">
                                           <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                     <br />

                                    <div class="form-group">
                                        <label class="control-label col-md-6">Country:</label>
                                        <div class="col-md-6">
                                            <div class="input-group bootstrap-timepicker">
                                           <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                     <br />
                <div class="form-group">
                                        <label class="control-label col-md-6">City:</label>
                                        <div class="col-md-6">
                                            <div class="input-group bootstrap-timepicker">
                                           <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                  <br />
                      <div class="form-group">
                                        <label class="control-label col-md-6">Email:</label>
                                        <div class="col-md-6">
                                            <div class="input-group bootstrap-timepicker">
                                           <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                    
                     <br />
                      <div class="form-group">
                                        <label class="control-label col-md-6">Phone:</label>
                                        <div class="col-md-6">
                                            <div class="input-group bootstrap-timepicker">
                                           <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                <form class="form-horizontal">     
               </div>
               </section>

        
            
                
      
              
            
                 
                          
                
                    
                    </div>
                        </div>












                        </div>






                            </div>
                        </div>
                         
                         

                          <div class="panel panel-info panel-drop">
                            <div class="panel-heading">
                                <header class="panel-title">
                                    Cause for which requester need product.</header>
                                 <asp:Label ID="request_id" runat="server" Text="Label" Visible="False"></asp:Label>
                        
                            </div>
                            <div class="panel-body">
                    <!-- start:store detail -->
                <div class="row" id="store-detail">
                    <div class="col-lg-12">
                        <div class="panel">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="flexslider">
                                            <ul class="slides">
                                                <li data-thumb="<%=pic_1 %>">
                                                    <img src="<%=pic_1 %>" />
                                                </li>
                                                <li data-thumb="<%=pic_2 %>">
                                                    <img src="<%=pic_2 %>" />
                                                </li>
                                                <li data-thumb="<%=pic_3 %>">
                                                    <img src="<%=pic_3 %>" />
                                                </li>
                                                <li data-thumb="<%=pic_4 %>">
                                                    <img src="<%=pic_4 %>" />
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                          

                           <div class="panel panel-info">
                            <div class="panel-heading">
                                <header class="panel-title">
                                    Product Requested: <asp:Label ID="Label14" runat="server" Text="Condition"></asp:Label>
                                </header>
                            </div>
                            <div class="panel-body">

                                        <h3>Cause:</h3>
                                           <p>
                                    <asp:Label ID="Label15" runat="server" Text="discription"></asp:Label></p>
                                           
                    
                            </div>
                        </div>






                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end:store detail -->
                                
                                
                                </div>
                        </div>










                         
                               
                          </div>
                        </div>












        </asp:Panel>
                    
  
                    </div>
                </div>
                <!-- end:basic table -->

            </div>
        </div>
        <!-- end:main -->

        <!-- start:footer -->
        <footer>
            <div class="container">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                   <div class="footer-widget">
                        <h1 class="page-header">Tentang /strong></h1> 
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
	<!-- end:javascript -->


    <!-- start:javascript -->
	<!-- javascript default for all pages-->
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

    <!-- javascript for Srikandi admin -->
    <script src="js/themes.js"></script>
	<!-- end:javascript -->
    <!-- start:javascript for this page -->
    <script src="assets/woothemes-FlexSlider/jquery.flexslider.js"></script>
    <script>
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
            });
        });
    </script>


    <script type="text/javascript">
    // JavaScript funciton to call inside UpdatePanel
        function jScript() {
            
                $('.flexslider').flexslider({
                    animation: "slide",
                    controlNav: "thumbnails"
                });
      

        }
    </script>
    <!-- end:javascript for this page -->

     <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            
                                                
            <asp:Panel ID="Panel3" runat="server">
         
                                            <div class="modal-header">
                                                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                <h4 class="modal-title">Send Response </h4>
                                            </div>
                                            <div class="modal-body">


                                              <div class="form-group">
                                                        <label for="exampleInputEmail1">Residential Address</label>
                                                        
                                                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
                                                        
                                                          </div>

                                                            <div class="form-group">
                                                        <label for="exampleInputEmail1">Phone Number.</label>
                                                        
                                                    <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                                                        
                                                          </div>

                                                <asp:Button ID="Button1" runat="server" class="btn btn-drop btn-warning" onclick="Button1_Click" Text="Submit" />


                                            </div>

                                           </asp:Panel>

                <asp:Panel ID="Panel4" runat="server">
                <div class="modal-header">
                                                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                <h4 class="modal-title">Reject Reason</h4>
                                            </div>

                                            <div class="modal-body">
                                             <div class="form-group">
                                                        <label for="exampleInputEmail1">Rejection Reason</label>

                                                 <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                                                 <asp:ListItem>Fake Member</asp:ListItem>
                                                 <asp:ListItem>I dont support his cause</asp:ListItem>
                                                <asp:ListItem>Will be donating to someone else</asp:ListItem>
                                                 <asp:ListItem>No reasons</asp:ListItem>
                                                 </asp:DropDownList>
                                                     </div>     
                                                        
                                                 <asp:Button ID="Button2" runat="server" class="btn btn-drop btn-warning" onclick="Button2_Click" Text="Send" />
                                                          </div>
                </asp:Panel>


                <asp:Panel ID="Panel5" runat="server">

                <div class="modal-header">
                                                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                <h4 class="modal-title">HOLD</h4>
                                            </div>

                                            <div class="modal-body">
                                             <div class="form-group">
                                             You can return back and take your action later, meanwhile reqester will see this request on hold for decision.
                                             </div>

                                             </div>


                </asp:Panel>

                <asp:Panel ID="Panel6" runat="server" Visible="False">
                <div class="modal-header">
                                                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                <h4 class="modal-title">Send Response</h4>
                                            </div>

                                            <div class="modal-body">
                                             <div class="form-group">
                                             Thanks, Response sucessfully sent to requester.
                                             </div>
                                              <asp:Button ID="Button3" runat="server" onclick="Button3_Click" class="btn btn-drop btn-warning" Text="Okay" />

                                             </div>
                </asp:Panel>



                                            </ContentTemplate>
                                            <Triggers>
                                          
            <asp:AsyncPostBackTrigger ControlID="DropDownList1">
            </asp:AsyncPostBackTrigger>
        </Triggers>

                                            
            </asp:UpdatePanel> 

                                        </div>
                                    </div>
                                </div>



    </form>
</body>
</html>	
