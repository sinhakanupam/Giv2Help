<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
<form runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>

<script>
    // This is called with the results from from FB.getLoginStatus().
    function statusChangeCallback(response) {
        console.log('statusChangeCallback');
        console.log(response);
        // The response object is returned with a status field that lets the
        // app know the current login status of the person.
        // Full docs on the response object can be found in the documentation
        // for FB.getLoginStatus().
        if (response.status === 'connected') {
            // Logged into your app and Facebook.
            var uid = response.authResponse.userID;
            var accessToken = response.authResponse.accessToken;

            // TODO: Handle the access token

            var form = document.createElement("form");
            form.setAttribute("method", 'post');
            form.setAttribute("action", '/website5/FacebookLogin.ashx');

            var field = document.createElement("input");
            field.setAttribute("type", "hidden");
            field.setAttribute("name", 'accessToken');
            field.setAttribute("value", accessToken);
            form.appendChild(field);

            document.body.appendChild(form);
            form.submit();




        } else if (response.status === 'not_authorized') {
            // The person is logged into Facebook, but not your app.
            document.getElementById('status').innerHTML = 'Please log ' +
        'into this app.';
        } else {
            // The person is not logged into Facebook, so we're not sure if
            // they are logged into this app or not.
            document.getElementById('status').innerHTML = 'Please log ' +
        'into Facebook.';
        }
    }

    // This function is called when someone finishes with the Login
    // Button.  See the onlogin handler attached to it in the sample
    // code below.
    function checkLoginState() {
        FB.getLoginStatus(function (response) {
            statusChangeCallback(response);
        });
    }

    window.fbAsyncInit = function () {
        FB.init({
            appId: '397315313809821',
            cookie: true,  // enable cookies to allow the server to access 
            // the session
            xfbml: true,  // parse social plugins on this page
            version: 'v2.2' // use version 2.2
        });

        // Now that we've initialized the JavaScript SDK, we call 
        // FB.getLoginStatus().  This function gets the state of the
        // person visiting this page and can return one of three states to
        // the callback you provide.  They can be:
        //
        // 1. Logged into your app ('connected')
        // 2. Logged into Facebook, but not your app ('not_authorized')
        // 3. Not logged into Facebook and can't tell if they are logged into
        //    your app or not.
        //
        // These three cases are handled in the callback function.

        FB.getLoginStatus(function (response) {
            statusChangeCallback(response);
        });

    };

    // Load the SDK asynchronously
    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    } (document, 'script', 'facebook-jssdk'));

    // Here we run a very simple test of the Graph API after login is
    // successful.  See statusChangeCallback() for when this call is made.
    function testAPI() {
        console.log('Welcome!  Fetching your information.... ');
        FB.api('/me', function (response) {
            console.log('Successful login for: ' + response.name);
            document.getElementById('accessToken').innerHTML =
        'Thanks for logging in, ' + response.accessToken + '!';
        });
    }
</script>




    <!-- start:wrapper -->
    <div id="wrapper">
        <div class="header-top">
            <!-- start:navbar -->
            <nav class="navbar navbar-inverse navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="container">
                    <!-- start:navbar-header -->
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.html"><i class="fa fa-cubes"></i> <strong>Give</strong>2<strong>Needful</strong></a>
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
                
                <!-- end:breadcrumb -->   

                <div class="row" id="home-content">
                    <div class="col-lg-8">
                        <!-- start:state overview -->
                        
                        <!-- end:state overview -->

                        <!--custom chart start-->
                       
                        <!--custom chart end-->
                        <!-- start:timeline -->
                        <section class="panel">
                            <div class="panel-body">
                                <div class="text-center mbot30">
                                    <h3 class="timeline-title">What is this all about?</h3>
                                    <p>Its a unique donation platform which connects privileged people who wish to make a difference in life of underprivileged.</p>
                                    </div>

                                <div class="timeline">
                                    <article class="timeline-item">
                                        <div class="timeline-desk">
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <span class="arrow"></span>
                                                    <span class="timeline-icon red"></span>
                                                    <span class="timeline-date">How It Works?</span>
                                                    <h1 class="red">Upload anything worth donating.</h1>
                                                    <p>You can put anything up for donation on our platform.</p>
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
                                                    <span class="timeline-date">How it's going to reach needful?</span>
                                                    <h1 class="green">Once you upload it will be available in free store</h1>
                                                    <p>Other Members who are Registered NGO / Verified Individuals who need that item will send you request with cause they support.</p>
                                                <p>You Can either Accept/Reject there request.</p>
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
                                                    <span class="timeline-date">What Happen when I Accept/Reject there request?</span>
                                                    <h1 class="blue">They get notified.</h1>

                                                    <p>Say, You have accepted a request, so when next time that member log's in he will receive a notification that your request have been approved and your contact details will be shared with him. He will then arrange pickup coordinating it with you.</p>
                                                    
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
                                                    <span class="timeline-date">How will i know my donated item reached the right people? </span>
                                                    <h1 class="purple">Happiness Wall</h1>
                                                    <p>NGO's/Individuals who are registered with us are verified by our TEAM.</p>
                                                    <div class="notification">
                                                        <p>And we have Happiness Wall, Once our member receive the item, he will share the moment of happiness with your donated item on HAPPINESS WALL.</p>
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
                                                    <span class="timeline-date">Can i request item from free store for some cause?</span>
                                                    <h1 class="light-green">YES!</h1>
                                                    <p>Anyone who wish to make a difference can simply register with us using Facebook or Email Signup option[NGO's Please use Email Signup] and within 48Hours our team will verify your details after which you can start spreading happiness. </p>
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
                                        <strong>Sign Up !</strong>    be a part of change<strong>.</strong>
                                    </div>
                                </header>
                            </div>
                            <div class="panel-body">
                                <div class="text-center" id="author">
                                <p>Ngo's can register using SignUp via Email option, Individual user can signup using both options though we recommend Facebook authentication which help us to remove fake account.</p>
                                    
                            
                                     <fb:login-button scope="email,user_work_history,user_location,user_education_history" data-size="xlarge" onlogin="checkLoginState();">
</fb:login-button>
              
              
              </br>
              </br>

              <!--modal popup-->

                                 
                                <a href="#myModal" data-toggle="modal" class="btn btn-drop btn-success">
                                
                                  Sign Up - Email
                                </a>

                                 <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                  <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                  <ContentTemplate>
                  

                  <asp:Panel ID="Panel3" runat="server">


                                            <div class="modal-header">

                                                <asp:LinkButton ID="LinkButton2" style="float: left;" onclick="LinkButton2_Click" runat="server">< Login Page</asp:LinkButton>
                                                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                <h4 class="modal-title">Registration Form</h4>
                                            </div>
                                            <div class="modal-body">

                                                <form role="form">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1" style="float: left;">Email address</label>
                  <asp:TextBox ID="TextBox2" class="form-control" placeholder="Enter email" runat="server"></asp:TextBox>
                                                        
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputPassword1" style="float: left;">Password</label>
                      <asp:TextBox ID="TextBox3" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
                                                         </div>

                                                     <div class="form-group">
                                                        <label for="exampleInputPassword1" style="float: left;">Repeate Password</label>
                                                        <asp:TextBox ID="TextBox4" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
                                                         </div>

  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
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


                  <asp:Panel ID="Panel1" runat="server">
                 


            
              <div class="form-group">
                                                        <label for="exampleInputEmail1" style="float: left;">Organisation you work for</label>
                  <asp:TextBox ID="TextBox6" class="form-control" placeholder="Enter NGO Name" runat="server"></asp:TextBox>
                                                        
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1" style="float: left;">Organisation website</label>
                  <asp:TextBox ID="TextBox7" class="form-control" placeholder="Eg: www.ngo.com" runat="server"></asp:TextBox>
                                                        
                                                    </div>
                                                    
                                                     </asp:Panel>


                  <asp:Panel ID="Panel2" runat="server">
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

              
              <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1" runat="server">

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
                  <asp:TextBox ID="TextBox5" class="form-control" placeholder="Enter Preferred Name" runat="server"></asp:TextBox>
                                                        
                                                    </div>


              <asp:UpdatePanel ID="UpdatePanel2" runat="server">
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
                                  
                                  <asp:UpdateProgress ID="UpdateProgress2" AssociatedUpdatePanelID="UpdatePanel2" runat="server">

              <ProgressTemplate>
                  <asp:Image ID="Image2" runat="server" ImageUrl="~/img/loading11.gif" />
              </ProgressTemplate>

              </asp:UpdateProgress>              


                                                   
                                                    
                                                     </form>

                  <asp:Button ID="Button1" class="btn btn-default" runat="server" 
        Text="Register" onclick="Button1_Click" />
                                            </div>


                                            </asp:Panel>
                  <asp:Panel ID="Panel4" runat="server">

                   <div class="modal-header">
                                                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                <h4 class="modal-title">Login Panel</h4>
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
                                    <asp:Button ID="Button2" runat="server" style="float: left;" onclick="Button2_Click" class="btn btn-danger" Text="Sign In"></asp:Button>
                              <asp:LinkButton ID="LinkButton1" onclick="LinkButton1_Click" class="btn btn-info" runat="server">New User? Register Here</asp:LinkButton>
                                       
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

                  </ContentTemplate>
                  </asp:UpdatePanel>
                                        </div>
                                    </div>
                                </div>

                               




                                    
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