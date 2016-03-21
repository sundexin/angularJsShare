myModule = angular.module( 'myModule', [] )

myModule.controller 'ngIfCtrl', [ '$scope', ( $scope ) ->
  $scope.fillet = true
  $scope.rightangle = true
  return
]
# ng-if会移除dom，生成dom，而ng-show只是改变其display属性。
