###
 Created by sundexin.com on 15/11/24
###
myModule = angular.module( "MyModule", [] )
myModule.directive 'hello',  ->
  restrict: 'AEMC'
  template: '<div class="btn btn-default" >replace会替换指令里的内容。</div>'
  replace: false
