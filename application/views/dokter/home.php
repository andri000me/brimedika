<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Brimedika</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="<?php echo base_url();?>assets/Horizontal/dist/assets/images/favicon.ico">

        <!-- App css -->
        <link href="<?php echo base_url();?>assets/Horizontal/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url();?>assets/Horizontal/dist/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url();?>assets/Horizontal/dist/css/app.min.css" rel="stylesheet" type="text/css" />

    </head>

    <body>

        <!-- Navigation Bar-->
        <header id="topnav">
            <nav class="navbar-custom">

                <div class="container-fluid">
                    <ul class="list-unstyled topbar-right-menu float-right mb-0">

                        <li class="dropdown notification-list">
                            <a class="nav-link dropdown-toggle nav-user mr-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <img src="<?php echo base_url();?>assets/Horizontal/dist/assets/images/users/avatar-1.jpg" alt="user-image" class="rounded-circle">
                                <small class="pro-user-name ml-1">
                                 <?php echo $this->session->userdata('nama'); ?>
                                </small>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated profile-dropdown ">
                                <!-- item-->
                                <div class="dropdown-header noti-title">
                                    <h6 class="text-overflow m-0">Hai !</h6>
                                </div>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="fe-user"></i>
                                    <span>My Account</span>
                                </a>

                                <div class="dropdown-divider"></div>

                                <!-- item-->
                                 <a href="<?php echo base_url();?>C_Login/logout" style="color:#00acc1" class="dropdown-item notify-item">
                                    <i class="fe-log-out"></i>
                                    <span >Logout</span>
                                </a>

                            </div>
                        </li>

                    </ul>
                    <?php //var_dump($_SESSION); ?>
                    <ul class="list-inline menu-left mb-0">
                        <li class="float-left">
                            <a href="index.html" class="logo">
                                <span class="logo-lg">
                                    <img src="<?php echo base_url();?>assets/Horizontal/dist/assets/images/favicon.ico" alt="" height="18"> <b style="color:white">BRIMEDIKA</b>
                                </span>
                                <span class="logo-sm">
                                    <img src="<?php echo base_url();?>assets/Horizontal/dist/assets/images/favicon.ico" alt="" height="28">
                                </span>
                            </a>
                        </li>
            
                    </ul>
                </div>

            </nav>
            <!-- end topbar-main -->

            <div class="topbar-menu">
                <div class="container-fluid">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">

                         <li class="has-submenu">
                                <a href="<?php echo base_url();?>C_Administrasi">
                                    <i class="fe-airplay"></i>Dashboard</a>
                            </li>
                        <li class="has-submenu">
                                <a href="<?php echo base_url();?>C_Dokter/pasien">
                                    <i class="fe-users"></i>Daftar Pasien</a>
                            </li>
                            <li class="has-submenu">
                                <a href="#">
                                    <i class="fe-link"></i>Obat</a>
                            </li>

                  
                            
                                </ul>
                            </li>

                        </ul>
                        <!-- End navigation menu -->

                        <div class="clearfix"></div>
                    </div>
                    <!-- end #navigation -->
                </div>
                <!-- end container -->
            </div>
            <!-- end navbar-custom -->
        </header>
        <!-- End Navigation Bar-->

        <div class="wrapper">
            <div class="container-fluid">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="#">Dokter</a></li>
                                    <li class="breadcrumb-item active">Dashboard</li>
                                </ol>
                            </div>
                            <h4 class="page-title">Halaman Beranda</h4>
                        </div>
                    </div>
                </div>     
                <!-- end page title --> 

                <div class="row">
                    <div class="col-xl-3 col-lg-6">
                        <div class="card widget-flat">
                            <div class="card-body p-0">
                                <div class="p-3 pb-0">
                                    <div class="float-right">
                                        <i class="mdi mdi-cart text-primary widget-icon"></i>
                                    </div>
                                    <h5 class="text-muted font-weight-normal mt-0">Total Sales</h5>
                                    <h3 class="mt-2">3,543</h3>
                                </div>
                                <div id="sparkline1"></div>
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->

                    <div class="col-xl-3 col-lg-6">
                        <div class="card widget-flat">
                            <div class="card-body p-0">
                                <div class="p-3 pb-0">
                                    <div class="float-right">
                                        <i class="mdi mdi-currency-usd text-danger widget-icon"></i>
                                    </div>
                                    <h5 class="text-muted font-weight-normal mt-0">Income amounts</h5>
                                    <h3 class="mt-2">21,287</h3>
                                </div>
                                <div id="sparkline2"></div>
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->

                    <div class="col-xl-3 col-lg-6">
                        <div class="card widget-flat">
                            <div class="card-body p-0">
                                <div class="p-3 pb-0">
                                    <div class="float-right">
                                        <i class="mdi mdi-account-multiple text-primary widget-icon"></i>
                                    </div>
                                    <h5 class="text-muted font-weight-normal mt-0">Total Users</h5>
                                    <h3 class="mt-2">5,387</h3>
                                </div>
                                <div id="sparkline3"></div>
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->

                    <div class="col-xl-3 col-lg-6">
                        <div class="card widget-flat">
                            <div class="card-body p-0">
                                <div class="p-3 pb-0">
                                    <div class="float-right">
                                        <i class="mdi mdi-eye-outline text-danger widget-icon"></i>
                                    </div>
                                    <h5 class="text-muted font-weight-normal mt-0">Total Visits</h5>
                                    <h3 class="mt-2">74,315</h3>
                                </div>
                                <div id="sparkline4"></div>
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->
                </div>
                <!-- end row -->

                <div class="row">
                    <div class="col-xl-8">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Sales Analytics</h4>

                                <canvas id="bar" height="350" class="mt-4"></canvas>

                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Top Marketplaces</h4>

                                <canvas id="doughnut" height="350" class="mt-4"></canvas>    

                            </div>
                        </div>
                    </div>
                </div>
                <!-- end row -->

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Recent Customers</h4>

                                <div class="table-responsive mt-3">
                                    <table class="table table-hover table-centered mb-0">
                                        <thead>
                                            <tr>
                                                <th>User ID</th>
                                                <th>Basic Info</th>
                                                <th>Phone</th>
                                                <th>Location</th>
                                                <th>Created Date</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                    
                                    
                                        <tbody>
                                            <tr>
                                                <td><b>#0121</b></td>
                                                <td>
                                                    <img src="<?php echo base_url();?>assets/Horizontal/dist/assets/images/users/avatar-4.jpg" alt="contact-img" height="36" title="contact-img" class="rounded-circle float-left mr-2" />
                                                    <p class="mb-0 font-weight-bold"><a href="javascript: void(0);">George Lanes</a></p>
                                                    <span class="font-13">george@examples.com</span>
                                                </td>
    
                                                <td>
                                                    606-467-7601
                                                </td>
    
                                                <td>
                                                    New York
                                                </td>
    
                                                <td>
                                                    2018/04/28
                                                </td>
    
                                                <td>
                                                    <div class="btn-group dropdown">
                                                        <a href="javascript: void(0);" class="dropdown-toggle arrow-none btn btn-light btn-sm" data-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-horizontal"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-right">
                                                            <a class="dropdown-item" href="#"><i class="mdi mdi-pencil mr-1 text-muted"></i>Edit Contact</a>
                                                            <a class="dropdown-item" href="#"><i class="mdi mdi-delete mr-1 text-muted"></i>Remove</a>
                                                            <a class="dropdown-item" href="#"><i class="mdi mdi-email mr-1 text-muted"></i>Send Email</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b>#0120</b></td>
                                                <td>
                                                    <img src="<?php echo base_url();?>assets/Horizontal/dist/assets/images/users/avatar-4.jpg" alt="contact-img" height="36" title="contact-img" class="rounded-circle float-left mr-2" />
                                                    <p class="mb-0 font-weight-bold"><a href="javascript: void(0);">Morgan Fuller</a></p>
                                                    <span class="font-13">morgan@examples.com</span>
                                                </td>
    
                                                <td>
                                                    407-748-6878
                                                </td>
    
                                                <td>
                                                    England
                                                </td>
    
                                                <td>
                                                    2018/04/27
                                                </td>
    
                                                <td>
                                                    <div class="btn-group dropdown">
                                                        <a href="javascript: void(0);" class="dropdown-toggle arrow-none btn btn-light btn-sm" data-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-horizontal"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-right">
                                                            <a class="dropdown-item" href="#"><i class="mdi mdi-pencil mr-1 text-muted"></i>Edit Contact</a>
                                                            <a class="dropdown-item" href="#"><i class="mdi mdi-delete mr-1 text-muted"></i>Remove</a>
                                                            <a class="dropdown-item" href="#"><i class="mdi mdi-email mr-1 text-muted"></i>Send Email</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b>#0119</b></td>
                                                <td>
                                                    <img src="<?php echo base_url();?>assets/Horizontal/dist/assets/images/users/avatar-4.jpg" alt="contact-img" height="36" title="contact-img" class="rounded-circle float-left mr-2" />
                                                    <p class="mb-0 font-weight-bold"><a href="javascript: void(0);">Charlie Daly</a></p>
                                                    <span class="font-13">charlie@examples.com</span>
                                                </td>
    
                                                <td>
                                                    918-766-5946
                                                </td>
    
                                                <td>
                                                    Canada
                                                </td>
    
                                                <td>
                                                    2018/04/27
                                                </td>
    
                                                <td>
                                                    <div class="btn-group dropdown">
                                                        <a href="javascript: void(0);" class="dropdown-toggle arrow-none btn btn-light btn-sm" data-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-horizontal"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-right">
                                                            <a class="dropdown-item" href="#"><i class="mdi mdi-pencil mr-1 text-muted"></i>Edit Contact</a>
                                                            <a class="dropdown-item" href="#"><i class="mdi mdi-delete mr-1 text-muted"></i>Remove</a>
                                                            <a class="dropdown-item" href="#"><i class="mdi mdi-email mr-1 text-muted"></i>Send Email</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td><b>#0118</b></td>
                                                <td>
                                                    <img src="<?php echo base_url();?>assets/Horizontal/dist/assets/images/users/avatar-5.jpg" alt="contact-img" height="36" title="contact-img" class="rounded-circle float-left mr-2" />
                                                    <p class="mb-0 font-weight-bold"><a href="javascript: void(0);">Skye Saunders</a></p>
                                                    <span class="font-13">skye@examples.com</span>
                                                </td>
    
                                                <td>
                                                    302-232-1376
                                                </td>
    
                                                <td>
                                                    France
                                                </td>
    
                                                <td>
                                                    2018/04/26
                                                </td>
    
                                                <td>
                                                    <div class="btn-group dropdown">
                                                        <a href="javascript: void(0);" class="dropdown-toggle arrow-none btn btn-light btn-sm" data-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-horizontal"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-right">
                                                            <a class="dropdown-item" href="#"><i class="mdi mdi-pencil mr-1 text-muted"></i>Edit Contact</a>
                                                            <a class="dropdown-item" href="#"><i class="mdi mdi-delete mr-1 text-muted"></i>Remove</a>
                                                            <a class="dropdown-item" href="#"><i class="mdi mdi-email mr-1 text-muted"></i>Send Email</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td><b>#0117</b></td>
                                                <td>
                                                    <img src="<?php echo base_url();?>assets/Horizontal/dist/assets/images/users/avatar-6.jpg" alt="contact-img" height="36" title="contact-img" class="rounded-circle float-left mr-2" />
                                                    <p class="mb-0 font-weight-bold"><a href="javascript: void(0);">Jodie Townsend</a></p>
                                                    <span class="font-13">jodie@examples.com</span>
                                                </td>
    
                                                <td>
                                                    251-661-5962
                                                </td>
    
                                                <td>
                                                    Tokyo
                                                </td>
    
                                                <td>
                                                    2017/11/28
                                                </td>
    
                                                <td>
                                                    <div class="btn-group dropdown">
                                                        <a href="javascript: void(0);" class="dropdown-toggle arrow-none btn btn-light btn-sm" data-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-horizontal"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-right">
                                                            <a class="dropdown-item" href="#"><i class="mdi mdi-pencil mr-1 text-muted"></i>Edit Contact</a>
                                                            <a class="dropdown-item" href="#"><i class="mdi mdi-delete mr-1 text-muted"></i>Remove</a>
                                                            <a class="dropdown-item" href="#"><i class="mdi mdi-email mr-1 text-muted"></i>Send Email</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end row -->

                
            </div> <!-- end container -->
        </div>
        <!-- end wrapper -->


        <!-- Footer Start -->
        <!-- Footer Start -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        Brimedika &copy; 2018 
                    </div>

                </div>
            </div>
        <!-- end Footer -->


        <!-- App js -->
        <script src="<?php echo base_url();?>assets/Horizontal/dist/js/vendor.min.js"></script>
        <script src="<?php echo base_url();?>assets/Horizontal/dist/js/app.min.js"></script>

        <!-- Plugins js -->
        <script src="<?php echo base_url();?>assets/Horizontal/dist/js/vendor/Chart.bundle.js"></script>
        <script src="<?php echo base_url();?>assets/Horizontal/dist/js/vendor/jquery.sparkline.min.js"></script>
        <script src="<?php echo base_url();?>assets/Horizontal/dist/js/vendor/jquery.knob.min.js"></script>

        <script src="<?php echo base_url();?>assets/Horizontal/dist/js/pages/dashboard.init.js"></script>

    </body>
</html>
