@Character = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.character.character_name
      React.DOM.td null, @props.character.level
      React.DOM.td null, @props.character.character_class
