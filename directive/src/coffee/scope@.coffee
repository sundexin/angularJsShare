###
 Created by sundexin.com on 15/11/24
###
myModule = angular.module( "MyModule", [] )

myModule.controller 'MyCtrl', [ '$scope', ( $scope ) ->
  $scope.ctrlScope = " 山一程，水一程，身向榆关那畔行，夜深千帐灯。风一更，雪一更，聒碎乡心梦不成，故园无此声。 "
]

myModule.directive 'myScope',  ->
  restrict:'AE'
  scope:
    scopeat:'@'
  templateUrl: 'scope@.html'
  # link: ( scope,element,attrs ) ->
  #   scope.scopeat = attrs.scopeat
# 我们把atts上的scopeat赋值给了scope上的scopeat,那么templateUrl上的继承了scopeat值。
# 在指令页面上，把属性scopeat绑定在了控制ctrlScope，
# @绑定传递的是字符串。
# 在指令的定义中，添加了scope:{say:'@'}这个键值对属性，也就是说，angular会识别say所绑定的东西是一个字符串。
#


