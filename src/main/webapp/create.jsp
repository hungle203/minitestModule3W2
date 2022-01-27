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
<h1>Create new Product</h1>
<form action="/products?action=createPost" method="post">
    <fieldset>
        <legend>Create Product</legend>
        <table>
            <tr>
                <td>Id: </td>
                <td><label for="id"></label><input type="text" id="id" name="id"></td>
            </tr>
        </table>
        <table>
            <tr>
                <td>Name: </td>
                <td><label for="name"></label><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><label for="price"></label><input type="text" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Address: </td>
                <td><label for="quantity"></label><input type="text" name="quantity" id="quantity"></td>
            </tr>
            <tr>
                <td>Address: </td>
                <td><label for="description"></label><input type="text" name="description" id="description"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="create"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
