###
 Created by sundexin.com on 15/11/30
###
myModule = angular.module( 'myModule', [] )

myModule.controller 'CommonController', ( $scope ) ->
  $scope.commonFn = ->
    alert( "这里是通用功能！" )

myModule.controller 'Controller1', ( $scope ) ->
  $scope.text = 'Hello1'
  $scope.fun1 = ->
    alert '执行按钮1方法'
    return
  # $scope.commonFn = ->
  #   commonService.commonFn()
  #   return
  
  return

myModule.controller 'Controller2', ( $scope ) ->
  $scope.text = 'Hello2'
  $scope.fun2 = ->
    alert '执行按钮2方法'
    return
  # $scope.commonFn = ->
  #   commonService.commonFn()
  #   return
  return
