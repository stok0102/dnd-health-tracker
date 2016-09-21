@Characters = React.createClass
  getInitialState: ->
    characters: @props.data

  getDefaultProps: ->
    characters: []

  addCharacter: (character) ->
    characters = @state.characters.slice()
    characters.push character
    @setState characters: characters
    
  render: ->
    React.DOM.div
      className: 'characters'
      React.DOM.h2
        className: 'title'
        'Characters'
      React.createElement CharacterForm, handleNewCharacter: @addCharacter
      React.DOM.hr null
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Name'
            React.DOM.th null, 'Level'
            React.DOM.th null, 'Class'
        React.DOM.tbody null,
          for character in @state.characters
            React.createElement Character, key: character.id, character: character
