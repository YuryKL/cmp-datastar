local source = {}
local types = require('cmp.types')
local cmp = require('cmp')

---@return boolean
function source:is_available()
  return vim.bo.filetype == 'html'
end

---@return string
function source:get_keyword_pattern()
  return [[\k\+]]
end

---@return string[]
function source:get_trigger_characters()
  return { '-' }
end

-- Known data-on events for better completion
local known_events = {
  ['click'] = true,
  ['keydown'] = true,
  ['load'] = true,
  ['signal-change'] = true,
  ['raf'] = true
}

---Check if cursor is in a position to receive HTML attribute completions
---@param line_to_cursor string The line content up to cursor position
---@return boolean
local function is_in_html_attribute(line_to_cursor)
  -- Check if we're inside a tag (between < and >)
  local tag_start = line_to_cursor:match(".*<[^>]*$")
  if not tag_start then
    return false
  end
  
  -- Check if we're in an attribute position (after tag name and whitespace)
  local after_tag_name = tag_start:match("^<[%w-_]+%s+.*$")
  if not after_tag_name then
    return false
  end

  -- Check if we're not inside a string (odd number of quotes before cursor)
  local _, quote_count = tag_start:gsub('"', '')
  if quote_count % 2 == 1 then
    return false
  end

  return true
end

---@param params cmp.CompleteParams
---@param callback fun(response: lsp.CompletionResponse|nil)
function source:complete(params, callback)
  -- Load completion items
  local ok, data = pcall(require, 'cmp_datastar.data')
  if not ok then
    return callback(nil)
  end

  -- Get current input and check context
  local input = params.context.cursor_before_line
  if not is_in_html_attribute(input) then
    return callback(nil)
  end

  -- Check if we're completing a data-on event
  local is_data_on = input:match('data%-on%-([^"=]*)$')

  -- Format items for nvim-cmp
  local items = {}
  local seen = {} -- Track seen items to prevent duplicates

  for _, item in ipairs(data) do
    -- Skip if we've seen this label before
    if seen[item.label] then
      goto continue
    end
    seen[item.label] = true

    -- If we're typing after data-on-, show all relevant completions
    if is_data_on then
      local event = is_data_on
      -- If we have text after data-on-, filter based on that
      if event and event ~= '' then
        -- Show specific event completion if it matches
        if item.label:match('^data%-on%-' .. event) then
          table.insert(items, {
            label = tostring(item.label),
            insertText = tostring(item.insertText),
            filterText = tostring(item.filterText),
            documentation = {
              kind = types.lsp.MarkupKind.Markdown,
              value = tostring(item.documentation)
            },
            kind = types.lsp.CompletionItemKind.Property,
            detail = tostring(item.detail),
            insertTextFormat = types.lsp.InsertTextFormat.Snippet
          })
        end
      -- If just data-on-, show all event completions
      else
        if item.label:match('^data%-on%-') then
          table.insert(items, {
            label = tostring(item.label),
            insertText = tostring(item.insertText),
            filterText = tostring(item.filterText),
            documentation = {
              kind = types.lsp.MarkupKind.Markdown,
              value = tostring(item.documentation)
            },
            kind = types.lsp.CompletionItemKind.Property,
            detail = tostring(item.detail),
            insertTextFormat = types.lsp.InsertTextFormat.Snippet
          })
        end
      end
    -- Otherwise show all completions
    else
      table.insert(items, {
        label = tostring(item.label),
        insertText = tostring(item.insertText),
        filterText = tostring(item.filterText),
        documentation = {
          kind = types.lsp.MarkupKind.Markdown,
          value = tostring(item.documentation)
        },
        kind = types.lsp.CompletionItemKind.Property,
        detail = tostring(item.detail),
        insertTextFormat = types.lsp.InsertTextFormat.Snippet
      })
    end

    ::continue::
  end

  callback(items)
end

---@return string
function source:get_kind_text()
  return "🚀" 
end

---@param completion_item lsp.CompletionItem
---@param callback fun(completion_item: lsp.CompletionItem|nil)
function source:resolve(completion_item, callback)
  callback(completion_item)
end

---@return string
function source:get_debug_name()
  return 'cmp_datastar'
end

return source
