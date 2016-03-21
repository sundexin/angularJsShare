###
 Created by sundexin.com on 15/11/26
###
myModule = angular.module( "MyModule", [] )
myModule.directive 'superman', ->
  scope: {}
  restrict: 'AE'
  controller: ( $scope ) ->
    #暴露3个方法，和MVC里的控制器有区别，这是指令内部的控制器。
    $scope.abilities = []
    @addStrength = ->
      $scope.abilities.push '你若安好'
      return
    @addSpeed = ->
      $scope.abilities.push '便是晴天'
      return
    @addLight = ->
      $scope.abilities.push '都尼玛扯淡'
      return
    return
  link: ( scope, element, attrs ) ->
    element.addClass 'btn btn-info'
    # 什么时候写controller，和link。暴露方法用前，操作DOM用link。
    element.bind 'mouseenter', ->
      alert scope.abilities
      return
    return

# 这里有一个问题就是如何给3个按钮添加不同的样式。
myModule.directive 'strength', ->
  require: '^superman'
    # ?如果在当前指令中没有找到所需要的控制器,会将null作为传给link函数的第四个参数。
    # 如果添加了^前缀,指令会在上游的指令链中查找require参数所指定的控制器。
    # ?^将前面两个选项的行为组合起来,我们可选择地加载需要的指令并在父指令链中进行查找。
    # 如果没有前缀,指令将会在自身所提供的控制器中进行查找,如果没有找到任何控制器(或 具有指定名字的指令)就抛出一个错误。
  link: ( scope, element, attrs, supermanCtrl ) ->
      #这里注意使用了第四个参数tn
    element.addClass 'btn-success'
    supermanCtrl.addStrength()
    return
myModule.directive 'speed', ->
  require: '^superman'
  link: ( scope, element, attrs, supermanCtrl ) ->
    element.removeClass()
    element.addClass 'btn-danger'
    supermanCtrl.addSpeed()
    return
myModule.directive 'light', ->
  require: '^superman'
  link: ( scope, element, attrs, supermanCtrl ) ->
    element.removeClass()
    element.addClass 'btn-error'
    supermanCtrl.addLight()
    return

# 这里要说的是require, 意思就是 strength 是就依赖 superman这个指令，
# 有了require之后，link就可以写第四个参数。supermanCtrl就每个指令注入了父作用域暴露出来的方法。
#'info primary danger'

#到底独立scope怎么创建。
