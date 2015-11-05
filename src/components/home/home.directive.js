/**
 * Created by Arham Ali Qureshi on 11/1/2015.
 */
(function(){
    var app = angular.module('homeDirectiveModule',[]);
    app.directive("cell",function(){
        return{
            template: '<div>{{name}}</div>'
        }
    });
})();
