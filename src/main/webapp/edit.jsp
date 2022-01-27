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
<form action="/products?action=editPost" method="post">
    <label for="id" hidden>ID:
        <input type="text" id="id" name="id" value="${product.getId()}" hidden>
    </label>
    <label for="name">Name :
        <input type="text" id="name" name="name" value="${product.getName()}">
    </label>
    <label for="price">Price :
        <input type="text" id="price" name="price" value="${product.getPrice()}">
    </label>
    <label for="quantity">quantity:
        <input type="text" id="quantity" name="quantity" value="${product.getQuantity()}">
    </label>
    <label for="description">description :
        <input type="text" id="description" name="description" value="${product.getDescription()}">
    </label>
</form>

</body>
</html>
