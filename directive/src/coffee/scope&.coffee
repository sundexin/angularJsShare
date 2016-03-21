###
 Created by sundexin.com on 15/11/27
###
myModule = angular.module( 'MyModule', [] )

myModule.controller 'MyCtrl', [ '$scope', ( $scope ) ->
    $scope.sayHello = ( name ) ->
      alert 'Hello ' + name
      return
    return
    # $scope.sayHello1 =(  ) ->
   # 这里不局限方法一样，可以再测试其他的方法一起。
]

myModule.directive 'myScope',  ->
  restrict:'AE'
  scope:
    greet: '&'
  templateUrl: 'scope&.html'


  # link: ( scope,element,attrs ) ->
  #   scope.scopeat = attrs.scopeat
# 这里传递参数 sayHello 的方法里有一个参数 name，参数传递是在代码片段里的name，指令里执行了一个对象，对象的属性的值绑定在输入框里。
# 在指令页面上，把属性scopeat绑定在了控制ctrlScope，
# @绑定的是字符串。
#
# 在body中，通过自定义标签传入了三个方法，分别是sayHello(name)这个方法都需要一个name变量。
# 在指令的定义中，模板替换成一个输入框，一个按钮：
# 输入框：用于输入username，也就是三个方法需要的参数name。
# 按钮：点击触发函数——通过绑定规则，绑定到相应的方法。
