###
 Created by sundexin.com on 15/11/24
###
myModule = angular.module( "MyModule", [] )
#注射器加载完所有模块时，此方法执行一次
myModule.run ( $templateCache ) ->
  $templateCache.put 'templateUrlDom.html', '<div class="alert alert-warning alert-dismissible" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><strong>Warning!</strong> Better check yourself, youre not looking too good.</div>'
  return

myModule.directive 'hello', ($templateCache) ->
  restrict: 'AECM'
  template: $templateCache.get "templateUrlDom.html"
  replace: true

