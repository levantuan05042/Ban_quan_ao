<%-- Created by IntelliJ IDEA. User: letau Date: 10/4/2024 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Quản Lý Danh Mục Sản Phẩm</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
  <!-- Bootstrap JS Bundle -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
  <!-- FontAwesome CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" crossorigin="anonymous" />

  <style>
    body {
      background-color: #f0f8ff;
      margin: 0;
      padding: 0;
      display: flex;
      min-height: 100vh;
      font-family: 'Arial', sans-serif;
    }

    .sidebar {
      width: 250px;
      background-color: #4a5568;
      color: #fff;
      padding: 20px;
      display: flex;
      flex-direction: column;
      gap: 15px;
    }

    .sidebar h4 {
      font-weight: bold;
      margin-bottom: 30px;
      text-align: center;
    }

    .sidebar a {
      color: #cbd5e0;
      text-decoration: none;
      padding: 12px;
      border-radius: 8px;
      transition: all 0.3s;
      display: flex; /* Sử dụng flexbox cho các liên kết */
      align-items: center; /* Căn giữa icon và text */
    }

    .sidebar a:hover {
      background-color: #718096;
      color: #fff;
    }

    .content {
      flex: 1;
      padding: 20px;
      background-color: #fff;
    }

    .container {
      max-width: 1200px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
      padding: 30px;
      margin-top: 30px;
    }

    .table img {
      width: 80px;
      height: 80px;
      object-fit: cover;
      border-radius: 8px;
    }

    .btn-primary {
      background-color: #1e90ff;
      border: none;
    }

    .btn-info {
      background-color: #17a2b8;
      border: none;
    }

    .btn-warning {
      background-color: #ffc107;
      border: none;
    }

    .btn-danger {
      background-color: #dc3545;
      border: none;
    }

    .table th {
      background-color: #6c757d;
      color: #fff;
    }

    .banner img {
      max-width: 100%;
      height: auto;
      border-radius: 10px;
    }

    .icon {
      margin-right: 10px; /* Khoảng cách giữa icon và text */
    }
    .custom-link {
      background-color: #718096;
      color: #fff;
    }
    .custom-link {
      background-color: #718096;
      color: #fff;
    }
  </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
  <h4>Quản lý Shop</h4>
  <a href="/products" ><i class="fas fa-tshirt icon"></i> Sản Phẩm</a>
  <a href="/productcategory"class="custom-link"><i class="fas fa-list icon"></i> Danh Mục Sản Phẩm</a>
  <a href="/supplier"><i class="fas fa-truck icon"></i> Nhà Cung Cấp</a>
  <a href="/carts"><i class="fas fa-shopping-cart icon"></i> Giỏ Hàng</a>
  <a href="/orders"><i class="fas fa-file-invoice icon"></i> Đơn Hàng</a>
  <a href="/salesreports"><i class="fas fa-chart-line icon"></i> Thống Kê</a>
  <a href="/accounts"><i class="fas fa-user icon"></i> Tài khoản</a>
  <a href="/logout"><i class="fas fa-sign-out-alt icon"></i> Đăng Xuất</a>
</div>

<!-- Content -->
<div class="content">
  <div class="container">
    <h2 class="mb-4 text-center"><i class="fas fa-list"></i>Danh Mục Sản Phẩm</h2>
    <a href="productcategory?action=createGet" class="btn btn-primary mb-3">
      <i class="fa-solid fa-plus"></i> Thêm Danh Mục
    </a>
    <table class="table table-hover table-bordered">
      <thead class="table-dark">
      <tr>
        <th>Số Thứ Tự</th>
        <th>Mã Danh Mục</th>
        <th>Tên Danh Mục</th>
        <th style="width: 20%; text-align: center;">Chức Năng</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${productcategory}" var="pc" varStatus="proc">
        <tr>
          <td>${proc.count}</td>
          <td>${pc.id}</td>
          <td>${pc.categoryname}</td>
          <td class="text-center">
            <a href="productcategory?action=updateGet&id=${pc.id}" class="btn btn-warning">
              <i class="fa-solid fa-pen-to-square"></i> Sửa
            </a>
          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
</div>

</body>
</html>
