class Raffler.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new_entry': 'createEntry'

  initialize: -> 
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(entries: @collection))
    this

  createEntry: (event) ->
    event.preventDefault()
    attributes = name: $('#new_entry_name').val()
    @collection.create attributes