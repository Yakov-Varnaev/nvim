vim.keymap.set('n', '<leader>rr', '<cmd>Rest run<cr>', { desc = 'Make http request' })

-- Function to close the 'rest_nvim_results' buffer
local function close_rest_nvim_results()
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_get_name(buf):match 'rest_nvim_results' then
      vim.api.nvim_buf_delete(buf, { force = true })
    end
  end
end

-- Autocommand to trigger the function when leaving or closing a .http file
vim.api.nvim_create_autocmd({ 'BufDelete' }, {
  pattern = '*',
  callback = close_rest_nvim_results,
})
