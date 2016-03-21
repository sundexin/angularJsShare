###
 Created by sundexin.com on 15/12/8
###
myModule = angular.module( 'myModule', [] )

# factory
myModule.factory 'commonFactory', [ '$q', '$http', ( $q, $http ) ->
  # service =
    commonFn: ->
      defer = $q.defer() # 声明延后执行
      $http(
        method: 'GET'
        url: './js/data.json'  #获取JSON数据
      ).success(
        ( data, status, headers, config ) ->
          defer.resolve( data
            console.log data
            # $.each data, ( i, v ) ->
            #   console.log v.firstname
          ) # 执行成功
      ).error(
        ( data, status, headers, config ) ->
          defer.reject() # 执行失败
      )
      console.log defer.promise
      return defer.promise # 返回获取的数据


  # return service
]

myModule.controller 'Controller1', [ '$scope', '$q', 'commonFactory', ( $scope, $q, commonFactory ) ->
  # $scope.text = 'Hello1'
  p = commonFactory.commonFn()
  p.then ( ( data ) ->
    $scope.text = data[0].firstname #调用接口，如果获取数据成功 resolve()方法
    $scope.servicetrs = data
    return
  ), ( data ) ->
    alert( "请求错误" )  # //如果获取数据失败，调用reject()方法
    return

  # 另一个测试用例
  # $scope.flag = true
  # $scope.handle = ->
  #   deferred = $q.defer()
  #   promise = deferred.promise
  #   promise.then ( (result) ->
  #     alert 'Success: ' + result
  #     return
  #   ), (error) ->
  #     alert 'Fail: ' + error
  #     return
  #   if $scope.flag
  #     deferred.resolve 'you are lucky!'
  #   else
  #     deferred.reject 'sorry, it lost!'
  #   return

]
