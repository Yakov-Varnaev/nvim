local M = {
  NumberMode = 'default',
}

function M.SwitchNumberMode()
  if M.NumberMode == 'default' then
    vim.opt.number = true
    vim.opt.relativenumber = true
    M.NumberMode = 'relative'
  elseif M.NumberMode == 'relative' then
    vim.opt.number = false
    vim.opt.relativenumber = false
    M.NumberMode = 'off'
  elseif M.NumberMode == 'off' then
    vim.opt.number = true
    vim.opt.relativenumber = false
    M.NumberMode = 'default'
  end
end

return M
