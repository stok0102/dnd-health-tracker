@Character = React.createClass
  handleDelete: (e) ->
    e.preventDefault()
    $.ajax
      method: 'DELETE'
      url: "/characters/#{ @props.character.id }"
      dataType: 'JSON'
      success: () =>
        @props.handleDeleteCharacter @props.character 
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.character.character_name
      React.DOM.td null, levelFormat(@props.character.level)
      React.DOM.td null, @props.character.character_class
      React.DOM.td null,
          React.DOM.a
            className: 'btn btn-danger'
            onClick: @handleDelete
            'Delete'
