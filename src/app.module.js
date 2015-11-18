/**
 * Created by Arham Ali Qureshi on 11/1/2015.
 */
(function(){
    var app = angular.module('MainModule',['routesModule']);
    app.controller('MainCtrl',['$scope','$location',function($scope,$location){
        this.showHeader = false;
        var _this = this;
        $scope.$on(HEADER_STATE,function(event,prm){
            _this.showHeader = prm;
        });

        this.loadHome = function(){
            $location.path("/");
        };

        this.loadGallery = function(){
            $location.path("/gallery");
        };

        this.loadMostVoted = function(){
            $location.path("/voted/most");
        };

        this.loadAddTrick = function(){
            $location.path("/trick/add");
        };
    }]);
})();