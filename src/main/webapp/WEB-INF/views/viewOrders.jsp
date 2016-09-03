<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script>
    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[5,10, 25, 50, -1], [5,10, 25, 50, "Все"]],
            "oSearch": {"sSearch": searchCondition}
        });
    });
</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Подтвержденные заказы</h1>
            <p class="lead">Здесь показаны оформленные заказы</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Клиент</th>
                <th>Дата оформления</th>
                <th>Квитанция</th>
                <th>Подтвердить</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} руб.</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}"/> "
                    ><span class="glyphicon glyphicon-info-sign"></span></a></td>
                </tr>
            </c:forEach>
        </table>


<%@include file="/WEB-INF/views/template/footer.jsp" %>