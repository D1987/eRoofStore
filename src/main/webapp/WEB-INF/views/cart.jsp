<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-wrapper">
    <div class="container">
        <section>
                <div class="jumbotron">
                    <div class="container">

                        <h1>Корзина</h1>

                        <p>Все выбранные товары в Вашей корзине</p>

                    </div>
                </div>
        </section>

        <section class="container">
            <div>
                <a class="btn btn-danger pull-left"><span class="glyphicon glyphicon-remove-sign"></span>Очистить Корзину</a>
            </div>

            <table class="table table-hover">
                <tr>
                    <th>Товар</th>
                    <th>Цена за единицу</th>
                    <th>Количество</th>
                    <th>Цена</th>
                    <th>Действие(акция)</th>
                </tr>
                <tr>
                    <td>Название товара</td>
                    <td>Стоимость товара</td>
                    <td>Количество</td>
                    <td>Общая стоимость</td>
                    <td>Кнопка удалить</td>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                    <th>Grand Total</th>
                    <th>grandTotal</th>
                    <th></th>
                </tr>
            </table>

            <a href="<spring:url value="/productList"/> ">Продолжить покупки</a>
        </section>
    </div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>