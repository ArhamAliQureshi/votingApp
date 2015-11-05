/**
 * Created by Arham Ali Qureshi on 11/1/2015.
 */
(function(){
    var app = angular.module('MainModule',['routesModule']);
    app.controller('MainCtrl',['$scope','$location',function($scope,$location){
        $scope.showHeader = false;
        $scope.$on(HEADER_STATE,function(prm){
            console.log(prm);
            $scope.showHeader = prm;
        });

        $scope.loadHome = function(){
            $location.path("/")
        };

        $scope.loadGallery = function(){
            $location.path("/voted/most")
        };

        $scope.loadMostVoted = function(){
            $location.path("/voted/most")
        };
    }]);
})();