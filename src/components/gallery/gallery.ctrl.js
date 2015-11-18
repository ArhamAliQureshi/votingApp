/**
 * Created by Arham Ali Qureshi on 11/1/2015.
 */
(function(){
    var app = angular.module('galleryCtrModule',[]);
    app.controller('GalleryCtrl',['$scope',function($scope){
        $scope.$emit(HEADER_STATE, true);
    }]);
})();