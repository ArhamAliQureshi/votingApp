/**
 * Created by Arham Ali Qureshi on 11/1/2015.
 */
(function(){
    var app = angular.module('addTrickCtrlModule',[]);
    app.controller('AddTrickCtrl',['$scope','$location',function($scope, $location){
        $scope.$emit(HEADER_STATE, false);
    }]);
})();