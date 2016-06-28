<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Все товары</h1>
            <p class="lead">Проверить все доступные товары</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
                <tr class="bg-success">
                    <th>Фото</th>
                    <th>Название</th>
                    <th>Категория</th>
                    <th>Состояние</th>
                    <th>Цена</th>
                </tr>
            </thead>
            <c:forEach items="${products}" var="product">
            <tr>
                <td><img src="#" alt="image"/></td>
                <td>${product.productName}</td>
                <td>${product.productCategory}</td>
                <td>${product.productCondition}</td>
                <td>${product.productPrice} руб.</td>
            </tr>
            </c:forEach>
        </table>
    <%--</div>--%>
<%--</div>--%>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
