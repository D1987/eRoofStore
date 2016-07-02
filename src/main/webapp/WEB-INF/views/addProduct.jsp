<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Добавить товар</h1>

            <p class="lead">Заполните все необходимые поля для добавления тоара:</p>
        </div>

        <form:form action="#" method="post" commandName="product">
            <div class="form-group">
                <label for="name">Наименование</label>
                <form:input path="productName" id="name" class="form-Control"/>
            </div>
        </form:form>



        <%@ include file="/WEB-INF/views/template/footer.jsp" %>
