myModule = angular.module( 'myModule', [] )

myModule.controller 'classCtrl', ['$scope', ( $scope ) ->
  $scope.isError = false
  $scope.isOK = false
  $scope.showError = ->
    $scope.messageText = 'This is an error!'
    $scope.isError = true
    $scope.isOK = false
  $scope.showSuccess = ->
    $scope.messageText = 'Just a warning. Please carry on.'
    $scope.isOK = true
    $scope.isError = false
]

# 如果要按钮文字也发生变化呢？
