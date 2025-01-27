local items = {
  {
    label = 'data-on-click',
    insertText = 'data-on-click="${1:expression}"',
    filterText = 'data-on-click data-on- data-on',
    documentation = 'Executes an expression whenever the element is clicked.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-on',
  },
  {
    label = 'data-on-keydown',
    insertText = 'data-on-keydown="${1:expression}"',
    filterText = 'data-on-keydown data-on- data-on',
    documentation = 'Executes an expression whenever a key is pressed.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-on',
  },
  {
    label = 'data-on-load',
    insertText = 'data-on-load="${1:expression}"',
    filterText = 'data-on-load data-on- data-on',
    documentation = 'Executes an expression whenever the element is loaded into the DOM.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-on',
  },
  {
    label = 'data-on-signal-change',
    insertText = 'data-on-signal-change="${1:expression}"',
    filterText = 'data-on-signal-change data-on- data-on',
    documentation = 'Executes an expression whenever a signal changes.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-on',
  },
  {
    label = 'data-on-raf',
    insertText = 'data-on-raf="${1:expression}"',
    filterText = 'data-on-raf data-on- data-on',
    documentation = 'Executes an expression on every `requestAnimationFrame` event.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-on',
  },
  {
    label = 'data-on-*',
    insertText = 'data-on-${1:name}="${2:expression}"',
    filterText = 'data-on-* data-on- data-on',
    documentation = [[Custom event handler. Available built-in events:
- click: Triggered when element is clicked
- keydown: Triggered when a key is pressed
- load: Triggered when element loads
- signal-change: Triggered on signal changes
- raf: Triggered on requestAnimationFrame]],
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-on',
  },
  {
    label = 'data-attr',
    insertText = 'data-attr="${1:attributeName}: ${2:expression}"',
    filterText = 'data-attr',
    documentation = 'Sets one or more attribute values using a set of key-value pairs that map to the attribute name and expression.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-attributes',
  },
  {
    label = 'data-attr-*',
    insertText = 'data-attr-${1:name}="${2:expression}"',
    filterText = 'data-attr-*',
    documentation = 'Sets an element’s attribute value based on an expression.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-attributes',
  },
  {
    label = 'data-bind',
    insertText = 'data-bind="${1:signalName}"',
    filterText = 'data-bind',
    documentation = 'Creates a new signal and enables two-way binding between it and the element.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-bind',
  },
  {
    label = 'data-bind-*',
    insertText = 'data-bind-${1:name}',
    filterText = 'data-bind-*',
    documentation = 'Creates a new signal and enables two-way binding between it and the element.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-bind',
  },
  {
    label = 'data-class',
    insertText = 'data-class="${1:className}: ${2:expression}"',
    filterText = 'data-class',
    documentation = 'Adds or removes one or more classes from an element using a set of key-value pairs that map to the class name and expression.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-class',
  },
  {
    label = 'data-class-*',
    insertText = 'data-class-${1:name}="${2:expression}"',
    filterText = 'data-class-*',
    documentation = 'Adds or removes a class from an element based on an expression.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-class',
  },
  {
    label = 'data-computed',
    insertText = 'data-computed-${1:name}="${2:expression}"',
    filterText = 'data-computed',
    documentation = 'Creates a signal that is computed based on an expression.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-computed',
  },
  {
    label = 'data-custom-validity',
    insertText = 'data-custom-validity="${1:expression}"',
    filterText = 'data-custom-validity',
    documentation = 'Adds custom validity to an element using an expression.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-custom-validity',
  },
  {
    label = 'data-indicator',
    insertText = 'data-indicator="${1:signalName}"',
    filterText = 'data-indicator',
    documentation = 'Creates a signal to track in-flight backend requests.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-indicator',
  },
  {
    label = 'data-indicator-*',
    insertText = 'data-indicator-${1:name}',
    filterText = 'data-indicator-*',
    documentation = 'Creates a signal to track in-flight backend requests.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-indicator',
  },
  {
    label = 'data-intersect',
    insertText = 'data-intersect="${1:expression}"',
    filterText = 'data-intersect',
    documentation = 'Executes an expression on intersection with the viewport.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-intersects',
  },
  {
    label = 'data-persist',
    insertText = '',
    filterText = 'data-persist',
    documentation = 'Persists signals in local storage.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-persist',
  },
  {
    label = 'data-persist-*',
    insertText = 'data-persist-${1:name}="${2:expression}"',
    filterText = 'data-persist-*',
    documentation = 'Persists signals in local storage with the provided name.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-persist',
  },
  {
    label = 'data-ref',
    insertText = 'data-ref="${1:signalName}"',
    filterText = 'data-ref',
    documentation = 'Creates a signal whose value references an element.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-ref',
  },
  {
    label = 'data-ref-*',
    insertText = 'data-ref-${1:name}',
    filterText = 'data-ref-*',
    documentation = 'Creates a signal whose value references an element.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-ref',
  },
  {
    label = 'data-replace-url',
    insertText = 'data-replace-url="${1:expression}"',
    filterText = 'data-replace-url',
    documentation = 'Replaces the URL in the browser with an evaluated expression.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-replace-url',
  },
  {
    label = 'data-scroll-into-view',
    insertText = 'data-scroll-into-view',
    filterText = 'data-scroll-into-view',
    documentation = 'Scrolls the element into view.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-scroll-into-view',
  },
  {
    label = 'data-show',
    insertText = 'data-show="${1:expression}"',
    filterText = 'data-show',
    documentation = 'Shows or hides an element based on whether an expression evaluates to `true` or `false`.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-show',
  },
  {
    label = 'data-signals',
    insertText = 'data-signals="{${1:signalName}: ${2:expression}}"',
    filterText = 'data-signals',
    documentation = 'Merges one or more signals into the existing signals using a set of key-value pairs that map to the signal name and expression.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-signals',
  },
  {
    label = 'data-signals-*',
    insertText = 'data-signals-${1:name}="${2:expression}"',
    filterText = 'data-signals-*',
    documentation = 'Merges a signal into the existing signals.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-signals',
  },
  {
    label = 'data-star-ignore',
    insertText = 'data-star-ignore',
    filterText = 'data-star-ignore',
    documentation = 'Ignores an element’s attributes when Datastar applies plugins.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-data-star-ignore',
  },
  {
    label = 'data-text',
    insertText = 'data-text="${1:expression}"',
    filterText = 'data-text',
    documentation = 'Sets the text content of an element using an expression.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-text',
  },
  {
    label = 'data-view-transition',
    insertText = 'data-view-transition="${1:expression}"',
    filterText = 'data-view-transition',
    documentation = 'Sets the value of `view-transition-name` for use with the View Transition API.',
    kind = 12, -- Property
    detail = 'https://data-star.dev/reference/attribute_plugins#data-view-transition',
  },
}

return items