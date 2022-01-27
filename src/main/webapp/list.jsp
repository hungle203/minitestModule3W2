<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Wellcome Win10 BV2
  Date: 1/27/2022
  Time: 1:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Bill</h1>
<table>
    <tr>
        <td>Quantity</td>
        <td>Price</td>
        <td>Action</td>
    </tr>
    <c:forEach items="${products}" var="product">
    <tr>
        <td>Quantity: ${product.getQuantity()}</td>
        <td>Price: ${product.getPrice()}</td>
         <td><button value="${product.getQuantity()*product.getPrice()}">Thanh toán</button></td>
    </tr>
</table>
</c:forEach>
</body>
</html>
