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
<h1>All Product</h1>
<br>
<tabel>
    <tr>
        <td><a href="/products?action=createGet">Create Product</a></td>
    </tr>
</tabel>

<form>
    <button><a href="/products?action=detail">Bill</a></button>
    <button><a href="/products?action=sortReduction">Sắp xếp giảm dần</a></button>
    <button><a href="/products?action=sortAscending">Sắp xếp Tăng dần</a></button>
</form>

<form>
    <table>
        <tr>
            <td>id</td>
            <td>Name</td>
            <td>price</td>
            <td>quantity</td>
            <td>description</td>
        </tr>
        <c:forEach items="${products}" var="product" >
            <tr>
                <td>${product.getId()}</td>
                <td>${product.getName()}</td>
                <td <c:if test="${product.getPrice() <= 0}">
                    style="color: red" </c:if>>${product.getPrice()}</td>
                <td>${product.getQuantity()}</td>
                <td>${product.getDescription()}</td>
                <td><a href="/products?action=delete&id=${product.getId()}">Delete</a></td>
                <td><a href="/products?action=editGet&id=${product.getId()}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
