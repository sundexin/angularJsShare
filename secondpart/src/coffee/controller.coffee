###
 Created by sundexin.com on 15/11/30
###
myModule = angular.module( 'myModule', [] )

# factory
myModule.factory 'commonFactory', [ '$q', ( $q ) ->
  service =
    commonFn: ->
      defer = $q.defer()
      console.log '通用按钮方法'
      console.log defer
      return
    comFn: ->
      console.log '尼玛又一遍'
  return service
]

# provider
myModule.provider 'commonProvider',
  $get: ->
    commonFn: ->
      alert '这是一个provider'
      return

#  service
myModule.service 'commonService', ->
  this.comFn = ->
    alert '这是一个服务'
    return
  return

myModule.controller 'Controller1', ( $scope, commonProvider ) ->
  $scope.text = 'Hello1'
  $scope.fun1 = ->
    alert '执行按钮1方法'
    return
  $scope.commonFn = ->
    commonProvider.commonFn()
    return
  return

myModule.controller 'Controller2', ( $scope, commonFactory ) ->
  $scope.text = 'Hello2'
  $scope.fun2 = ->
    alert '执行按钮2方法'
    return
  $scope.commonFn = ->
    commonFactory.commonFn()
    return
  return

# promise angular 169

# npm install --save-dev nodemon
# nodemin app.js
