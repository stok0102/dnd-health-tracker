@Character = React.createClass
  getInitialState: ->
    edit: false

  handleToggle: (e) ->
    e.preventDefault()
    @setState edit: !@state.edit

  handleDelete: (e) ->
    e.preventDefault()
    $.ajax
      method: 'DELETE'
      url: "/characters/#{ @props.character.id }"
      dataType: 'JSON'
      success: () =>
        @props.handleDeleteCharacter @props.character

  handleEdit: (e) ->
    e.preventDefault()
    data =
      character_name: this.refs.character_name.value
      level: this.refs.level.value
      character_class: this.refs.character_class.value
    $.ajax
      method: 'PUT'
      url: "/characters/#{ @props.character.id }"
      dataType: 'JSON'
      data:
        character: data
      success: (data) =>
        @setState edit: false
        @props.handleEditCharacter @props.character, data

  characterRow: ->
    React.DOM.tr null,
      React.DOM.td null, @props.character.character_name
      React.DOM.td null, levelFormat(@props.character.level)
      React.DOM.td null, @props.character.character_class
      React.DOM.td null,
          React.DOM.a
            className: 'btn btn-default'
            onClick: @handleToggle
            'Edit'
          React.DOM.a
            className: 'btn btn-danger'
            onClick: @handleDelete
            'Delete'

  characterForm: ->
    React.DOM.tr null,
      React.DOM.td null,
        React.DOM.input
          className: 'form-control'
          type: 'text'
          defaultValue: @props.character.character_name
          ref: 'character_name'
      React.DOM.td null,
        React.DOM.input
          className: 'form-control'
          type: 'number'
          defaultValue: @props.character.level
          ref: 'level'
      React.DOM.td null,
        React.DOM.input
          className: 'form-control'
          type: 'text'
          defaultValue: @props.character.character_class
          ref: 'character_class'
      React.DOM.td null,
          React.DOM.a
            className: 'btn btn-default'
            onClick: @handleEdit
            'Update'
          React.DOM.a
            className: 'btn btn-danger'
            onClick: @handleToggle
            'Cancel'

  render: ->
    if @state.edit
      @characterForm()
    else
      @characterRow()
