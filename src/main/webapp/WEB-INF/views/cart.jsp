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

        <section class="container" ng-app="cartApp">
            <div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
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
                <tr ng-repeat="item in cart.cartItems">
                    <td>{{item.product.productName}}</td>
                    <td>{{item.product.productPrice}}</td>
                    <td>{{item.quantity}}</td>
                    <td>{{item.totalPrice}}</td>
                    <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
                        <span class="glyphicon glyphicon-remove"></span>Удалить</a></td>
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
            </div>
        </section>
    </div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>