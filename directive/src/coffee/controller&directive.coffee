###
 Created by sundexin.com on 15/11/26
###
myModule = angular.module( "MyModule", [] )

myModule.controller 'MyCtrl', [ '$scope', ($scope) ->
    $scope.myFunction = ->
      alert( '弹出第一条信息！' )
      return
    return
]



myModule.directive "loader", ->
  restrict: 'AE'
  link: ( scope, element, attrs ) ->
    element.bind 'click', ( evt ) ->
      # scope.loadData();
      # scope.$apply("myFunction1()");
      console.log scope
      # scope.myFunction1()

      # 这里也有一个坑，howToLoad会被转换成小写的howtoload
      scope.$apply( attrs.attrloader1 )
