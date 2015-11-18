/**
 * Created by Arham Ali Qureshi on 11/1/2015.
 */
(function(){
    var app = angular.module('routesModule',['ngRoute','homeCtrModule','galleryCtrModule','mostVotedCtrModule','addTrickCtrlModule']);

    app.config(function($routeProvider){
        $routeProvider
            .when("/",{
                templateUrl: "./components/home/home.tpl.html",
                controller: "HomeCtrl"
            })
            .when("/gallery",{
                templateUrl: "./components/gallery/gallery.tpl.html",
                controller: "GalleryCtrl"
            })
            .when("/voted/most",{
                templateUrl: "./components/mostVoted/mostVoted.tpl.html",
                controller: "MostVotedCtrl"
            })
            .when("/trick/add",{
                templateUrl: "./components/addTrick/addTrick.tpl.html",
                controller: "AddTrickCtrl"
            })
            .when("/trick/:trickId",{
                templateUrl: "",
                controller: "GetTrickCtrl"
            })
            .otherwise({redirectTo: "/"});
    });

})();