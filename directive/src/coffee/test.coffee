###
 Created by sundexin.com on 15/11/27
###
myModule = angular.module( "MyModule", [] )

myModule.controller 'MyCtrl', [ '$scope', ($scope) ->
    $scope.ctrlTry = "123"   #这里也可以有默认值
    $scope.ctrlTry1 = "123"   #这里也可以有默认值
    return
]

myModule.directive 'write', ->
  restrict: 'AE'
  scope:
    try: '='
  template: '<input type="text" ng-model="try"/>'
  # link: ( scope,element,attrs ) ->
  #   scope.try = attrs.try
# @只是把控制器的内容传递给了指令，但是现在要实现的是双向绑定。就是互相影响，互相改变内容。
# @绑定的是字符串。
#
# 1 在控制器myAppCtrl对应的div中，定义了一个变量ng-model —— ctrlTry
# 2 ctrlTry对应的是输入框中输入的值。
# 3 然后把这个变量当做一个参数传递给 write 这个标签(指令)的try属性。
# 4 在 write 标签中，又把这个try绑定到模板中的一个输入框内。
