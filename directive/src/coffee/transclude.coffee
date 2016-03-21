###
 Created by sundexin.com on 15/11/26
###
myModule = angular.module( "MyModule", [] )
myModule.directive 'hello',  ->
  restrict: 'AEMC'
  template: '<div class="btn btn-default" >不会替换内容 <div ng-transclude >transclude</div></div>'
  # templateUrl: 'templateUrlDom.html'
  replace: false
  transclude: true
