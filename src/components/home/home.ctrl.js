/**
 * Created by Arham Ali Qureshi on 11/1/2015.
 */
(function(){
    var app = angular.module('homeCtrModule',[]);
    app.controller('HomeCtrl',['$scope','$location',function($scope, $location){
        //$scope.$emit(HEADER_STATE, false);

        $scope.loadGallery = function(){
            $location.path("/gallery");
        };

        $scope.loadAddTrick = function(){
            $location.path("")
        };
    }]);
})();