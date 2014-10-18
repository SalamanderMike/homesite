class Router
  constructor: (@routeProvider, @locationProvider)->
    @routeProvider.
      when "/",
        templateUrl: "/site_template",
        controller: "HomeCtrl as home"
    @locationProvider.html5Mode(true)

HomeRouter = angular.module("HomeRouter", ["ngRoute"])
HomeRouter.config(["$routeProvider", "$locationProvider", Router])

# Define Config for CSRF token (security)
HomeRouter.config ["$httpProvider", ($httpProvider)->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]
