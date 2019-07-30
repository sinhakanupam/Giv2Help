<%@ Page Language="C#" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="details" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

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
    <link rel="stylesheet" type="text/css" href="assets/woothemes-FlexSlider/flexslider.css">


      <script type="text/javascript">
          var counter = 1;

          function uploadComplete(sender, args) {

              var filename = args.get_fileName();
              $get("img" + counter + "").src = "./test/" + filename;
              $get("ImgExSrc" + counter + "").value = "./test/" + filename;


              counter = counter + 1;

          }
    </script>


</head>
<body runat="server">
<form runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>


<script>
    window.fbAsyncInit = function () {
        FB.init({
            appId: '397315313809821',
            //status: true, // check login status
            //cookie: true, // enable cookies to allow the server to access the session
            xfbml: true,
            version: 'v2.4'
        });



        FB.Event.subscribe('auth.authResponseChange', function (response) {
            if (response.status === 'connected') {
                // the user is logged in and has authenticated your
                // app, and response.authResponse supplies
                // the user's ID, a valid access token, a signed
                // request, and the time the access token 
                // and signed request each expire
                var uid = response.authResponse.userID;
                var accessToken = response.authResponse.accessToken;

                // TODO: Handle the access token

                var form = document.createElement("form");
                form.setAttribute("method", 'post');


                form.setAttribute("action", '/website5/detail_fb.ashx?item_id=<%=item_id %>&item_del=0');


                var field = document.createElement("input");
                field.setAttribute("type", "hidden");
                field.setAttribute("name", 'accessToken');
                field.setAttribute("value", accessToken);
                form.appendChild(field);

                document.body.appendChild(form);
                form.submit();



            }
            else if (response.status === 'not_authorized') {
                // the user is logged in to Facebook, 
                // but has not authenticated your app
            } else {
                // the user isn't logged in to Facebook.
            }
        });


    };

    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) { return; }
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    } (document, 'script', 'facebook-jssdk'));
</script>

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
                                <li class="dropdown active">
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
                            Product Detail
                        </h2>
                    </div>
                </div>

    <asp:Panel ID="Panel3" runat="server" Visible="False">
    
                 <div class="well well-danger">
                            <h3>Remove Item</h3>
                            Note: Removing item which are already requested by members, System will automatically Reject there request.
                            
                          
                         <br />
                         <br />

                          

   <a href="#Div1" data-toggle="modal" class="btn btn-drop btn-success">

                                    Delete Item
                                    </a>   
                         
                     
                        </div>
                </asp:Panel>
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
                                        <div class="store-detail-title">
                                            <h1><strong><%=item_name %></strong> <span class="pull-right"><strong><%=condition %></strong></span></h1>
                                        </div>
                                        <div class="store-detail-content">
                                            <p>
                                                 <asp:Label ID="desc" runat="server" Text="Label"></asp:Label></p>
                                            <div class="panel panel-warning">
                                                <div class="panel-heading">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#detailbarang">
                                                        <h4 class="panel-title">
                                                        Product Location
                                                        </h4>
                                                    </a>
                                                </div>
                                                <div id="detailbarang" class="panel-collapse collapse in">
                                                    <div class="panel-body">
                                                       <b>Location:</b>    <%=city %>,<%=country %>.

                                                       
                                                       </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                
                                                <div class="col-sm-10 col-xs-6">
                                            
                                                     <asp:Panel ID="Panel1" runat="server">
                                                      <a href="#Div2" data-toggle="modal" class="btn btn-drop btn-success">
                                
                                 Request This Product
                                </a>
                                                                      
                                    </asp:Panel>
                                                     <asp:Panel ID="Panel2" runat="server" Visible="False">
                                                     <h5>You have already requested this product.</h5>
                                                     </asp:Panel>
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
        <!-- end:main -->

         <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                                         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                         <ContentTemplate>
                                                         
                                                                
                                                    

                                            <div class="modal-header">
                                                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                <h4 class="modal-title">Get This product for a cause </h4>
                                            </div>
                                            <div class="modal-body">


                                          
                                                 <div class="form-group">
                                                        <label for="exampleInputEmail1">Explain the cause for which you need this item in not more than 100 words.</label>
                                                        
                                                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
                                                        
                                                          </div>
  <label for="exampleInputEmail1">Upload pics related to your cause.</label>

                                                
                                                    <div class="form-group">

                                                   <cc1:AjaxFileUpload ID="AjaxFileUpload1" throbberid="myThrobber" OnClientUploadComplete="uploadComplete"  onuploadcomplete="AjaxFileUpload1_UploadComplete" runat="server" MaximumNumberOfFiles="4"></cc1:AjaxFileUpload>
  
                                                        </div>
                                                   

                                                       
                                                    <div class="form-group" align="center">
                                                     <img src="" id="img1" alt="" height="100" width="100" />
                                                  <img src="" id="img2" alt="" height="100" width="100" />
        <img src="" id="img3" alt="" height="100" width="100" />

        <img src="" id="img4" alt="" height="100" width="100" />

                                                    </div>
                                        
                                    <asp:HiddenField runat="server" ID="ImgExSrc1" />
                                                <asp:HiddenField runat="server" ID="ImgExSrc2" />
                                                <asp:HiddenField runat="server" ID="ImgExSrc3" />
                                                <asp:HiddenField runat="server" ID="ImgExSrc4" />


                                                           <div class="form-group">
                                                        <label for="exampleInputEmail1">Your contact number.</label>
                                                        
                                                    <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                                                        
                                                          </div>


                                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click"  class="btn btn-default" Text="Send" />
                                                  
                                                   
                                               
                                            </div>
                                            </ContentTemplate>
                                                         
                                                         </asp:UpdatePanel> 
                                             
                                        </div>
                                    </div>
                                </div>

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
    <!-- end:javascript for this page -->

    <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="Div1" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                        <div class="modal-header">
                                                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                <h4 class="modal-title">Send Response </h4>
                                            </div>
                                            <div class="modal-body">

                                             <div class="form-group">
                                            Are you sure?
                                            </div>
                                             <div class="form-group">
                                            This item is requested by: <%=req_count %> Members'
                                            </div>

                                            <div class="form-group">

            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" class="btn btn-drop btn-warning" Text="Click to Confirm" />
                                            </div>

                                            </div>



                                        </div>
                                    </div>
                                </div>



                                <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="Div2" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                       
                                           

                <asp:UpdatePanel ID="UpdatePanel2" runat="server" ChildrenAsTriggers="False" UpdateMode="Conditional">
                <ContentTemplate>
                
                  

                  <asp:Panel ID="Panel4" runat="server">


                                              <div class="modal-header">

                                                <asp:LinkButton ID="LinkButton2" style="float: left;" onclick="LinkButton2_Click" runat="server">< Login Page</asp:LinkButton>
                                                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<h4 class="modal-title">Registration Form</h4>
                                            </div>
                                            <div class="modal-body">

                                                <form role="form">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1" style="float: left;">Email address</label>
                  <asp:TextBox ID="TextBox3" class="form-control" placeholder="Enter email" runat="server"></asp:TextBox>
                                                        
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputPassword1" style="float: left;">Password</label>
                      <asp:TextBox ID="TextBox4" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
                                                         </div>

                                                     <div class="form-group">
                                                        <label for="exampleInputPassword1" style="float: left;">Repeate Password</label>
                                                        <asp:TextBox ID="TextBox5" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
                                                         </div>

  <asp:UpdatePanel ID="UpdatePanel3" runat="server">
              <ContentTemplate>
                                                          <div class="form-group">
                                                        <label for="exampleInputEmail1" style="float: left;">You Are</label>
                      <asp:DropDownList ID="DropDownList5" class="form-control" runat="server" AutoPostBack="True" 
                                                                  onselectedindexchanged="DropDownList5_SelectedIndexChanged">
                      <asp:ListItem>Select</asp:ListItem>
                      <asp:ListItem>NGO</asp:ListItem>
                      <asp:ListItem>Individual</asp:ListItem>
                      </asp:DropDownList>
                                                       
                                                    </div>


                  <asp:Panel ID="Panel5" runat="server">
                 


            
              <div class="form-group">
                                                        <label for="exampleInputEmail1" style="float: left;">Organisation you work for</label>
                  <asp:TextBox ID="TextBox6" class="form-control" placeholder="Enter NGO Name" runat="server"></asp:TextBox>
                                                        
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1" style="float: left;">Organisation website</label>
                  <asp:TextBox ID="TextBox7" class="form-control" placeholder="Eg: www.ngo.com" runat="server"></asp:TextBox>
                                                        
                                                    </div>
                                                    
                                                     </asp:Panel>


                  <asp:Panel ID="Panel6" runat="server">
                  <div class="form-group">
                                                        <label for="exampleInputEmail1" style="float: left;">Your Profession</label>
                    <asp:DropDownList ID="DropDownList6" class="form-control" runat="server">
                    <asp:ListItem>Engineer</asp:ListItem>
                    <asp:ListItem>Business Men</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Lawyer</asp:ListItem>
                    <asp:ListItem>Govt Officer</asp:ListItem>
                      </asp:DropDownList>                                        
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1" style="float: left;">Company Name</label>
                  <asp:TextBox ID="TextBox8" class="form-control" placeholder="Enter your Company name" runat="server"></asp:TextBox>
                                                        
                                                    </div>
                                                    
                  </asp:Panel>
              </ContentTemplate>
              </asp:UpdatePanel>

              
              <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel3" runat="server">

              <ProgressTemplate>
                  <asp:Image ID="Image1" runat="server" ImageUrl="~/img/loading11.gif" />
              </ProgressTemplate>

              </asp:UpdateProgress>
              
                                                          <div class="form-group">
                                                        <label for="exampleInputEmail1" style="float: left;">Phone</label>
                  <asp:TextBox ID="TextBox9" class="form-control" placeholder="Enter your contact no." runat="server"></asp:TextBox>
                                                        
                                                    </div>
                                                     



                                                   

                                                          <div class="form-group">
                                                        <label for="exampleInputEmail1" style="float: left;">Name</label>
                  <asp:TextBox ID="reg_name" class="form-control" placeholder="Enter Preferred Name" runat="server"></asp:TextBox>
                                                        
                                                    </div>


              <asp:UpdatePanel ID="UpdatePanel4" runat="server">
              <ContentTemplate>
               <div class="form-group">
                                                        <label for="exampleInputEmail1" style="float: left;">Country</label>
                      <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" AutoPostBack="True" 
                                                              onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                      </asp:DropDownList>
                                                       
                                                    </div>
              
                                                     

                                                   

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1" style="float: left;">City</label>
                      <asp:DropDownList ID="DropDownList3" class="form-control" runat="server">
                      </asp:DropDownList>
                                                       
                                                    </div>

</ContentTemplate>
              </asp:UpdatePanel>
                                  
                                  <asp:UpdateProgress ID="UpdateProgress2" AssociatedUpdatePanelID="UpdatePanel4" runat="server">

              <ProgressTemplate>
                  <asp:Image ID="Image2" runat="server" ImageUrl="~/img/loading11.gif" />
              </ProgressTemplate>

              </asp:UpdateProgress>              


                                                   
                                                    
                                                     </form>

                  <asp:Button ID="Button4" class="btn btn-default" runat="server" 
        Text="Register" onclick="Button4_Click" />
                                            </div>


                                            </asp:Panel>
                  <asp:Panel ID="Panel7" runat="server">

                   <div class="modal-header">
                                                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                <h4 class="modal-title">Sign In</h4>
                                            </div>


                                            <div class="modal-header">

                                           <h4>Login Using Facebook</h4>   <div class="fb-login-button" scope="email,user_work_history,user_location,user_education_history" data-max-rows="1" data-size="xlarge" data-show-faces="false" data-auto-logout-link="true"></div>
			  

                                            </div>
                   <section class="panel">
                            
                            <div class="panel-body">
                                <form class="form-horizontal" role="form">
                                    <div class="form-group">
    <label for="exampleInputEmail1" style="float: left;">Email address</label>
                                        
<asp:TextBox ID="TextBox10" class="form-control" runat="server"></asp:TextBox>
                                            <p class="help-block"></p>
                                       
                                    </div>
                                    <div class="form-group">
         <label for="exampleInputEmail1" style="float: left;">Password</label>
                                       
                 <asp:TextBox ID="TextBox11" class="form-control" runat="server"></asp:TextBox>   
                                             
                                    </div>
                                    
                                   <div class="form-group">
                                    <asp:Button ID="Button5" runat="server" style="float: left;" onclick="Button5_Click" class="btn btn-danger" Text="Sign In"></asp:Button>
                            &nbsp&nbsp&nbsp&nbsp  <asp:LinkButton ID="LinkButton1" onclick="LinkButton1_Click" class="btn btn-info" runat="server">New User? Register Here</asp:LinkButton>
                                       
                             </div>
                              <div class="form-group">
                                        <div style="text-align: center; class="col-lg-offset-2 col-lg-10">
                                             <asp:Label ID="error" runat="server" Text="Uncessfull Login - Either Username or password incorrect." Visible="False" ForeColor="Red"></asp:Label>       
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </section>

                 


                  </asp:Panel>

                  
                    
                

                    <asp:Panel ID="req_panel" runat="server">

                     <div class="modal-header">
                                                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                <h4 class="modal-title">Send Request</h4>
                                            </div>
                                            <div class="modal-body">
                                             <div class="form-group">

                    Click below button to proceed........
                    </div>
                     
                     <div class="form-group">
                     <asp:Button ID="Button2" onclick="Button2_Click" runat="server" class="btn btn-drop btn-success" Text="Get This Product" />
                                     
                                     </div>
                                     </div>
                    </asp:Panel> 
                
                
                
                </ContentTemplate>
                 <Triggers>
                <asp:AsyncPostBackTrigger ControlID="LinkButton1">
                </asp:AsyncPostBackTrigger>
                <asp:AsyncPostBackTrigger ControlID="LinkButton2">
                </asp:AsyncPostBackTrigger>
            </Triggers>


                </asp:UpdatePanel>
                                            
                                            </div>



                                        </div>
                                    </div>
                                </div>
    </form>
</body>
</html>	