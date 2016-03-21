###
 Created by sundexin.com on 15/11/24
###
myModule = angular.module( "MyModule", [] )
myModule.directive 'localScope',  ->
  restrict: 'AE'
  scope: {}
  templateUrl: 'localScopeDom.html'
  replace: true

# 当我们自己创建某个指令时，这个指令肯定不可能只使用一次，是要重复多次使用的，有的在一个页面内或者一个控制器内需要使用多次。
# 类似上面的这种场景，在任何一个输入框内改变数据，都会导致其他的标签内的数据一同发生改变，这显然不是我们想要的。
#　这个时候就需要独立作用域了。


