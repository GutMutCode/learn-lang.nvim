-- This is where your plugin's code lives.
-- The code here will only be executed when the user explicitly requires your plugin.

local function create_buffer()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_buf_set_name(buf, "*scratch*")
  vim.api.nvim_set_option_value("filetype", "lua", { buf = buf })
  return buf
end

local function main()
  print("Hello from our plugin")
  local buf = create_buffer()
  vim.api.nvim_buf_set_lines(buf, 0, -1, true, { "-- Welcome to Neovim!", "" })
  vim.api.nvim_win_set_buf(0, buf)
end

main()
