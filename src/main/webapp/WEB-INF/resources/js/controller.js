/**
 * Created by Dima on 16.07.16.
 */

var cartApp = angular.module ("cartApp",[]);

cartApp.controller("cartCtrl", function ($scope, $http) {
    $scope.refreshCart = function (cartId) {
        $http.get('/eRoofStore/rest/cart/'+$scope.cartId).success(function (data) {
            $scope.cart=data;
        })
    };

    $scope.clearCart = function () {
        $http.delete('/eRoofStore/rest/cart/'+$scope.cartId).success($scope.refreshCart($scope.cartId));
    };

    $scope.initCartId = function (cartId) {
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function (productId) {
        $http.put('/eRoofStore/rest/cart/add/'+productId).success(function (data) {
            $scope.refreshCart($http.get('/eRoofStore/rest/cart/cartId'));
            alert("Товар успешно добавлен в корзину!");
        });
    };

    $scope.removeFromCart = function (productId) {
        $http.put('/eRoofStore/rest/cart/remove/'+productId).success(function (data) {
            $scope.refreshCart($http.get('/eRoofStore/rest/cart/cartId'));
        });
    };

})