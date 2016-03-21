###
 Created by sundexin.com on 15/11/30
###
myModule = angular.module( 'myModule', [] )
myModule.directive 'myScope', ->
  restrict: 'E'
  template: '<div>hello sina!</div>'
  replace: true

