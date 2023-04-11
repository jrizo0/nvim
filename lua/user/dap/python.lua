local dap_status_ok, dap_python = pcall(require, "dap-python")
if not dap_status_ok then
  return
end

-- require('dap-python').resolve_python = function()
--   return 'python'
-- end

dap_python.setup('~/.virtualenvs/debugpy/Scripts/python.exe')
