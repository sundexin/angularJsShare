myModule = angular.module( 'myModule', [ 'ngAnimate' ] )

myModule.controller 'ngAnimateCtrl', [ '$scope', ($scope) ->
    $scope.showButton = ->
      $scope.expression = true
      return
    $scope.hideButton = ->
      $scope.expression = false
      return
    return
]
