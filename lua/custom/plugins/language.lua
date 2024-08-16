vim.opt.keymap = ''

local isEng = true
local function toggleLangs()
  if isEng then
    isEng = false
    vim.opt.keymap = 'russian-jcukenmac'
  else
    isEng = true
    vim.opt.keymap = ''
  end
end

vim.keymap.set('n', '<M-l>', toggleLangs, { desc = 'Toggle Languages' })

return {}
