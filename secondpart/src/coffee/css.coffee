myModule = angular.module( 'myModule', [] )

myModule.controller 'CSSCtrl', ['$scope', ( $scope ) ->
  $scope.color = "red"
  $scope.sun =  "得"
  $scope.setGreen = ->
    $scope.color = "green"
    $scope.sun =  "孙"

]

# 如果要按钮文字也发生变化呢？
