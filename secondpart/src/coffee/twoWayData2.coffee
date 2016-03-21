myModule = angular.module('myModule', [])

myModule.controller 'myModule', [ '$scope', ($scope) ->
    $scope.userInfo =
      email: '253445528@qq.com'
      password: '253445528'
      autoLogin: true

    $scope.getFormData = ->
      console.log $scope.userInfo
      return

    $scope.setFormData = ->
      $scope.userInfo =
        email: '20108847@qq.com'
        password: '123456'
        autoLogin: false
      return

    $scope.resetForm = ->
      $scope.userInfo =
        email: '4564321@qq.com'
        password: '654321'
        autoLogin: true
      return
    return
]