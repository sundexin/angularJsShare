###
 Created by sundexin.com on 15/11/24
###
myModule = angular.module( "MyModule", [] )
myModule.directive 'templateUrl',  ->
  restrict: 'AE'
  templateUrl: 'templateUrlDom.html'
  replace: false
