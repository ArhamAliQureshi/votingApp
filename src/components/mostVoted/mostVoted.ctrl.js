/**
 * Created by Arham Ali Qureshi on 11/1/2015.
 */
(function(){
    var app = angular.module('mostVotedCtrModule',[]);
    app.controller('MostVotedCtrl',['$scope','$http',function($scope,$http){
        $scope.$emit(HEADER_STATE, true);
    }]);
})();