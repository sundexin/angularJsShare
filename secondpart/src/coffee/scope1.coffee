###
 Created by sundexin.com on 15/11/30
###
myModule = angular.module( 'myModule', [] )

myModule.controller 'CommonCtrl', ( $scope, $rootScope ) ->
  $scope.name = '明明'
  $rootScope.StaffMember = '音乐人'
  return

myModule.controller 'ListCtrl', ( $scope ) ->
  $scope.names = [
    '刘欢'
    '杰克逊'
    '麦当娜'
  ]
  return
