local function hello(name)
  print("Hello " .. (name or "Neovim") .. "! :)");
end

local function print_tabs()
  -- Get all tabs
  local tabs = vim.api.nvim_list_tabpages();

  -- Iterate over each tab
  for _, tab in ipairs(tabs) do
    print("Tab ID:", tab)

    -- Get all windows in the current tab
    local windows = vim.api.nvim_tabpage_list_wins(tab)

    -- Iterate over each window in the current tab
    for _, win in ipairs(windows) do
      print("  Window ID:", win)

      -- You can retrieve the buffer for each window if needed
      local buf = vim.api.nvim_win_get_buf(win)
      print("    Buffer ID:", buf)

      -- Optional: retrieve the buffer name
      local buf_name = vim.api.nvim_buf_get_name(buf)
      print("    Buffer name:", buf_name)
    end
  end
end

return {
  hello = hello,
  print_tabs = print_tabs,
}
