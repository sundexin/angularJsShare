myModule = angular.module( 'myModule', [] )

myModule.controller 'ngShowCtrl', [ '$scope', ( $scope ) ->
    $scope.show = false
    $scope.toggleMenu = ->
      $scope.show = !$scope.show
      return
    return
]

