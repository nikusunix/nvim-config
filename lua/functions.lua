local F = {}

function F.toggle_line_numbers()
  -- Get current value
  local value = vim.o.relativenumber:get()

  -- Use "not" for invert value
  vim.o.relativenumber = not value
end

function F.buffer_save(callback)
  local buf_name = vim.api.nvim_buf_get_name(0)

  -- If the file already has a path, save it directly
  if buf_name ~= "" then
    vim.cmd('write')
    if callback then callback() end
    return
  end

  -- If the file is unnamed, prompt the user for a filename
  vim.ui.input({ prompt = 'Save unnamed file as: ' }, function(input)
    if not input or input == "" then return end

    -- Check if a file with this name already exists on disk
    if vim.fn.filereadable(input) == 1 then
      local choice = vim.fn.confirm('File already exists! Overwrite?', '&Yes\n&No', 2)
      if choice == 1 then
        vim.cmd('write! ' .. input)
        if callback then callback() end
      else
        vim.notify('Save canceled.', vim.log.levels.WARN)
      end
    else
      -- If it is a completely new file, save normally
      vim.cmd('write ' .. input)
      if callback then callback() end
    end
  end)
end

function F.buffer_close()
  local is_modified = vim.api.nvim_get_option_value('modified', { buf = 0 })
  local buf_name = vim.api.nvim_buf_get_name(0)
  
  -- Checks if the file path physically exists on your storage drive
  local file_exists = vim.fn.filereadable(buf_name) == 1

  -- Condition 1: If the buffer is clean AND the file exists on disk -> delete safely
  if not is_modified and file_exists then
    vim.cmd('bdelete')
    return
  end

  -- Condition 2: If the buffer is modified OR the file does not exist on disk -> open dialog
  local choice = vim.fn.confirm('Save changes before closing?', '&Save\n&Discard\n&Cancel', 3)

  if choice == 1 then
    -- Call the save function. Pass the final close command inside a callback 
    -- so it triggers ONLY after a filename is successfully provided.
    F.buffer_save(function()
      vim.cmd('bdelete')
    end)
  elseif choice == 2 then
    -- Force delete the buffer, ignoring unsaved states or missing target paths
    vim.cmd('bdelete!')
  else
    -- User canceled or closed the prompt layout
    vim.notify('Close canceled.', vim.log.levels.INFO)
  end
end

return F
