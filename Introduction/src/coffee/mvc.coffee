###
 Created by sundexin.com on 15/11/30
###
myModule = angular.module('myModule', [])
myModule.controller 'HelloAngular', [ '$scope', ($scope) ->
  $scope.greeting = text: 'Hello'
  return
]