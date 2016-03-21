###
 Created by sundexin.com on 15/11/24
###
myModule = angular.module( "MyModule", [] )
myModule.directive 'hello',  ->
  restrict: 'AEMC'
  template: '<div>Sina china!</div>'
  replace: false
