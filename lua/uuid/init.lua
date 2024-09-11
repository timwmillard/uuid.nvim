local uuid = require("uuid.uuid")

vim.cmd([[command! UUID lua require('uuid').newV4()]])

local M = {}

function M.newV4()
  local newUUID = uuid()

  -- -- Set the new UUID in the current register
  vim.fn.setreg('"', newUUID)
  vim.fn.setreg('+', newUUID)

  -- Display a message with the generated UUID
  vim.api.nvim_echo({{"UUID generated: " .. newUUID, "Normal"}}, true, {})
end

return M
