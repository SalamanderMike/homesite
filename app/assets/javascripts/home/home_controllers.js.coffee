HomeControllers = angular.module("HomeControllers", ["ngAnimate", "ui.bootstrap"])

class HomeCtrl
  constructor: (@scope, @modal, @modalControls)->























class ModalControls
  constructor: (@scope, @modalInstance)->




HomeControllers.controller("HomeCtrl", ["$scope", "$modal", HomeCtrl])
HomeControllers.controller("modalDialog", ["$scope", "$modalInstance", ModalControls])
