###
 Created by sundexin.com on 15/12/1
###
myModule = angular.module('myModule', [])
myModule.controller 'HelloAngular', [ '$scope', ($scope) ->
  $scope.greeting = text: 'Hello'
  return
]