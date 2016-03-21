###
 Created by sundexin.com on 15/11/24
###
myModule = angular.module( "MyModule", [] )
myModule.directive 'templateDom',  ->
  restrict: 'AE'
  template: '<div class="alert alert-success" role="alert">\
      <strong>Well done!</strong> You successfully read <a href="#" class="alert-link">this important alert message</a>.\
    </div>'
  replace: true
