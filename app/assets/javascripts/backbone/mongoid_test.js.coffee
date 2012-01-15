#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.App =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: () ->
    router = new App.Routers.Specs()
    Backbone.history.start { root: "/", pushState: true }
    router.navigate(window.location.pathname, true)


App.Views.AppView = Backbone.View.extend
  el: $('#el')
