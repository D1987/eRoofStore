<%--
  Created by IntelliJ IDEA.
  User: Dima
  Date: 27.06.16
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>Название продукта</th>
                <th>Категория</th>
                <th>Состояние</th>
                <th>Цена</th>
            </tr>
        </thead>
        <tr>
            <td>${product.productName}</td>
            <td>${product.productCategory}</td>
            <td>${product.productCondition}</td>
            <td>${product.productPrice}</td>
        </tr>
    </table>

</body>
</html>
