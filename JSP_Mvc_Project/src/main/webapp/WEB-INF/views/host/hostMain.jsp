<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/adminsetting.jsp" %>
    
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>어드민 메인</title>
  <!-- Bootstrap core CSS-->
  <link href="${context}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="${context}/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="${context}/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="${context}/resources/css/sb-admin.css" rel="stylesheet">
<%! String adminId; %>
</head>
<body class="fixed-nav sticky-footer bg-dark" id="page-top">

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
	<a class="navbar-brand" href="adminMain.ad">Hi,${adminId}</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
	 <span class="navbar-toggler-icon"></span>
	 </button>
	 <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="adminOrderList.ad">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">주문관리</span>
          </a>
        </li>
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="FinalAccount.ad">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">판매실적</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="adminRefundList.ad">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">환불요청 목록</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-wrench"></i>
            <span class="nav-link-text">재고관리</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents">
            <li>
              <a href="productAdd.ad">재고추가</a>
            </li>
            <li>
              <a href="productList.ad">재고목록(수정,삭제)</a>
            </li>
          </ul>
          
        </li>
        
        </ul>
        
         <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
      <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal" onclick="window.location='adminLogout.ad'">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>

	</nav>
	<div class="content-wrapper">

    <!-- Bootstrap core JavaScript-->
    <script src="${context}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${context}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="${context}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="${context}/resources/vendor/chart.js/Chart.min.js"></script>
    <script src="${context}/resources/vendor/datatables/jquery.dataTables.js"></script>
    <script src="${context}/resources/vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="${context}/resources/js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="${context}/resources/js/sb-admin-datatables.min.js"></script>
    <script src="${context}/resources/js/sb-admin-charts.min.js"></script>

</body>
</html>