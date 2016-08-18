<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Добавить товар</h1>

            <p class="lead">Заполните все необходимые поля для добавления тоара:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post" commandName="product"
                   enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Наименование</label><form:errors path="productName" cssStyle="color: #ff0000;"/>
            <form:input path="productName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="category">Категория</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Кровля"/>
                Кровля</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="accessory" value="Забор"/>
                Заборы</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="accessory" value="Дверь"/>
                Двери</label>
        </div>

        <div class="form-group">
            <label for="description">Описание</label>
            <form:textarea path="productDescription" id="description" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="price">Цена</label><form:errors path="productPrice" cssStyle="color: #ff0000;"/>
            <form:input path="productPrice" id="price" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="condition">Состояние</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="Новая"/>
                Новая</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="Б/у"/>
                Б/у</label>
        </div>

        <div class="form-group">
            <label for="status">Статус</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="В наличии"/>
                В наличии</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="Нет в наличии"/>
                Нет в наличии</label>
        </div>

        <div class="form-group">
            <label for="unitInStock">Скидки</label><form:errors path="unitInStock" cssStyle="color: #ff0000;"/>
            <form:input path="unitInStock" id="unitInStock" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Производитель</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Загрузить изображение</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large"/>
        </div>

        <br><br>
        <input type="submit" value="Добавить" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Отмена</a>
        </form:form>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>