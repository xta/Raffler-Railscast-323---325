class Raffler.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: -> 
    @collection = new Raffler.Collections.Entries()
    @collection.fetch({reset: true, add: true})

  index: ->
    view = new Raffler.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"